package com.zryx.action;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.zryx.common.FileUpload;
import com.zryx.dao.IUserDao;
import com.zryx.entity.User;

/**   
系统管理action 
 */
@Controller
@Scope("prototype")
public class UserAction extends BaseAction {
	
	private static final long serialVersionUID = 1L;
	@Autowired
	private  IUserDao userDao ;
	private  User  user; 
	private List<User> list;
	private  FileUpload fileUpload;
	
	/**
	 * 用户查询 
	 * @return
	 */
	
	public String list() {
		
	
		Map<String, Object> param=new HashMap<>();

		if (req.getParameter("commit")!=null) {
			param.put("name", user.getName());
			param.put("username", user.getUsername());
			param.put("sex", user.getSex());
			//将从页面中获取到的当前页来设置对象以便计算
		}
		
		 this.getPage().setTotalRows(userDao.list(param).size());
		 param.put("page", this.getPage());
		 list=userDao.list(param);
		
		return "list";

	}
	
	/**
	 * 用户新增
	 * @return
	 */
	public String add(){
		
		if(fileUpload!=null){
			user.setFilePath(fileUpload.upload());
		}
		
		user.setPassword("1");
		int i=userDao.add(user);
		
		if(i>0){
			this.setMsg("新增操作成功");
		}else{
			this.setMsg("新增操作失败");
		}
		
		return "list";
	}
	/**
	 * 用户更新
	 * @return
	 */
	public String update(){
		
		if(!this.isCommit()){
			//这里是得到查询到的对象展示出来
			user=userDao.getObjById(user.getId());
			System.out.println(user);
			return "update";
		}else{
			if(fileUpload!=null){
				user.setFilePath(fileUpload.upload());
			}
			int i=userDao.update(user);
			if(i>0){
				this.setMsg("更新成功");
			}else{
				this.setMsg("更新失败");
			}
			
		}
		
		return "list";
		
	}
	/**
	 * 用户删除
	 * @return
	 */
	public String delete(){
	
		int i=userDao.delete(user.getId());
		//响应AJAX请求
		if(i>0){
			this.setMsg("删除操作成功");
		}else{
			this.setMsg("删除操作失败");
		}
		list();
		return list();
	}
	
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public List<User> getList() {
		return list;
	}
	public void setList(List<User> list) {
		this.list = list;
	}

	public FileUpload getFileUpload() {
		return fileUpload;
	}

	public void setFileUpload(FileUpload fileUpload) {
		this.fileUpload = fileUpload;
	}
	
	
	
	
	
	
	
}
