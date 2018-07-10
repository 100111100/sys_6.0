package com.zryx.action;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.zryx.dao.ITeacherDao;
import com.zryx.entity.Teacher;

/**   
系统管理action 
 */
@Controller
@Scope("prototype")
public class TeacherAction extends BaseAction {
	
	private static final long serialVersionUID = 1L;
	@Autowired
	private  ITeacherDao teacherDao;
	private  Teacher  teacher; 
	private List<Teacher> list;
	
	
	/**
	 * 字典查询 
	 * @return
	 */
	
	public String list() {
		
		Map<String, Object> param=new HashMap<>();
		if (this.isCommit()) {
			param.put("name", teacher.getName());
			param.put("specialty", teacher.getSpecialty());
			param.put("sex", teacher.getSex());
			
		}
		
		this.getPage().setTotalRows(teacherDao.list(param).size());
		param.put("page", this.getPage());
		 list=teacherDao.list(param);
		 
		return "list";
	}
	public String slist() {
		
		Map<String, Object> param=new HashMap<>();
		if (this.isCommit()) {
			param.put("name", teacher.getName());
			param.put("specialty", teacher.getSpecialty());
			param.put("sex", teacher.getSex());
			
		}
		
		this.getPage().setTotalRows(teacherDao.list(param).size());
		param.put("page", this.getPage());
		list=teacherDao.list(param);
		
		return "slist";
	}
	
	/**
	 * 字典新增
	 * @return
	 */
	public String add(){
		int i=teacherDao.add(teacher);
		System.out.println("添加:"+teacher);
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
			teacher=teacherDao.getObjById(teacher.getId());
			System.out.println("-------------"+teacher);
			return "update";
		}else{
			int i=teacherDao.update(teacher);
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
	
		int i=teacherDao.delete(teacher.getId());
		//响应AJAX请求
		if(i>0){
			this.setMsg("删除操作成功");
		}else{
			this.setMsg("删除操作失败");
		}
		list();
		return list();
	}
	
	public Teacher getTeacher() {
		return teacher;
	}

	public void setTeacher(Teacher teacher) {
		this.teacher = teacher;
	}

	public List<Teacher> getList() {
		return list;
	}
	public void setList(List<Teacher> list) {
		this.list = list;
	}
	
	
	
	
	
	
	
}
