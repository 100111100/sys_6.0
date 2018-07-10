package com.zryx.controller;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import com.zryx.common.Page;
import com.zryx.dao.IUserDao;
import com.zryx.entity.User;
/**
 * 用户管理
 * @author zhql
 */
@Controller
@Scope("prototype")
@RequestMapping("user")
public class UserController extends BaseController<User> {
    @Autowired
	private IUserDao userDao;

	// 列表查询
	@RequestMapping("list")
	public String list() throws Exception {
		Map<String, Object> param = new HashMap<String, Object>();
        
		if (this.commit) {
			param.put("name", pd.getName());
			param.put("username", pd.getUsername());
			param.put("sex", pd.getSex());
		}
		Page p = this.getPage();
		param.put("page", p);// 把分页对象传到Dao
		List<User> list = userDao.list(param);
		this.setList(list);
		//获取总记录数
		p.setTotalRows((int)((com.github.pagehelper.Page<User>)list).getTotal());
		return "user/list";
	}

	// 新增
	@RequestMapping("add")
	public String add(@RequestParam("image") MultipartFile uploadFile) throws Exception {
		// 判断是否上传头像
		if (uploadFile != null && uploadFile.getSize()>0) {
			String path = sc.getRealPath("\\");
			//获取当前tomcat/webapps的路径
			path = path.replace(req.getContextPath().substring(1)+"\\","") + "images";
			//获取上传的文件名
			String fileName = uploadFile.getOriginalFilename();
			System.out.println("文件名:" + fileName);
			System.out.println("文件类型:" + uploadFile.getContentType());
			try {
				fileName = System.currentTimeMillis()+ "." + fileName.substring(fileName.indexOf("."));
				System.out.println("新文件名:" + fileName);
				uploadFile.transferTo(new File(path, fileName));
			} catch (Exception e) {
				e.printStackTrace();
			}
			pd.setFilePath(fileName);
		} else {
			pd.setFilePath("");
		}
		//添加上传头像外的数据
		int i = userDao.add(pd);
		if (i > 0) {
			this.setMsg("新增操作成功");
		} else {
			this.setMsg("新增操作失败");
		}
		return "user/list";
	}
	
	@RequestMapping("updateForId")
	public String updateForId(){
		if (!this.commit) {// 初始化更新页面
			pd = userDao.getObjById(pd.getId());
			System.out.println("用户更新PD：" + pd);
			this.rm.put("command", pd);// 回显示数据
			return "user/update";
		}else{
			return "user/list";
		}
		
	}

	// 更新
	@RequestMapping("update")
	public String update(@RequestParam("image") MultipartFile uploadFile) throws Exception {
			
		 System.out.println("pd:"+this.pd);
		 System.out.println("uploadFile:"+uploadFile);
			if (uploadFile != null && uploadFile.getSize()>0) {// 判断是否上传头像
				String path = sc.getRealPath("\\");
				//获取当前tomcat/webapps的路径
				path = path.replace(req.getContextPath().substring(1)+"\\","") + "images";
				//获取上传的文件名
				String fileName = uploadFile.getOriginalFilename();
				System.out.println("文件名:" + fileName);
				System.out.println("文件类型:" + uploadFile.getContentType());
				try {
					fileName = System.currentTimeMillis()+ "." + fileName.substring(fileName.indexOf("."));
					System.out.println("新文件名:" + fileName);
					uploadFile.transferTo(new File(path, fileName));
				} catch (Exception e) {
					e.printStackTrace();
				}
				pd.setFilePath(fileName);
			} else {
				pd.setFilePath("");
			}
			int i = userDao.update(pd);
			if (i > 0) {
				this.setMsg("更新操作成功");
			} else {
				this.setMsg("更新操作失败");
			}
		
		return "user/list";
	}

	// 删除
	@RequestMapping("delete")
	public String delete() throws Exception {
		int i = userDao.delete(pd.getId());
		if (i > 0) {
			this.setMsg("删除操作成功");
		} else {
			this.setMsg("删除操作失败");
		}
		return "list";
	}
}
