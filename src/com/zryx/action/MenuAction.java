package com.zryx.action;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.zryx.dao.IMenuDao;
import com.zryx.entity.Menu;

/**   
系统管理action 
 */
@Controller
@Scope("prototype")
public class MenuAction extends BaseAction {
	
	private static final long serialVersionUID = 1L;
	@Autowired
	private  IMenuDao   menuDao;
	private  Menu  menu; 
	private List<Menu> list;
	
	
	/**
	 * 字典查询 
	 * @return
	 */
	
	public String list() {
		
		Map<String, Object> param=new HashMap<>();
		if (this.isCommit()) {
			param.put("name", menu.getName());
			param.put("mlevel",menu.getMlevel());
			param.put("pid", menu.getPid());
			//将从页面中获取到的当前页来设置对象以便计算
		}
		
		this.getPage().setTotalRows(menuDao.list(param).size());
		param.put("page", this.getPage());
		 list=menuDao.list(param);
		 
		return "list";
	}
	
	/**
	 * 字典新增
	 * @return
	 */
	public String add(){
		int i=menuDao.add(menu);
	
		if(i>0){
			this.setMsg("新增操作成功");
		}else{
			this.setMsg("新增操作失败");
		}
		
		return "list";
	}
	/**
	 * 字典更新
	 * @return
	 */
	public String update(){
		
		if(!this.isCommit()){
			//这里是得到查询到的对象展示出来
			menu=menuDao.getObjById(menu.getId());
			System.out.println("-------------"+menu);
			return "update";
		}else{
			int i=menuDao.update(menu);
			if(i>0){
				this.setMsg("更新成功");
			}else{
				this.setMsg("更新失败");
			}
			
		}
		
		return list();
		
	}
	/**
	 * 字典删除
	 * @return
	 */
	public String delete(){
	
		int i=menuDao.delete(menu.getId());
		//响应AJAX请求
		if(i>0){
			this.setMsg("删除操作成功");
		}else{
			this.setMsg("删除操作失败");
		}
		list();
		return list();
	}
	
	public Menu getMenu() {
		return menu;
	}

	public void setMenu(Menu menu) {
		this.menu = menu;
	}

	public List<Menu> getList() {
		return list;
	}
	public void setList(List<Menu> list) {
		this.list = list;
	}
	
	
	
	
	
	
	
}
