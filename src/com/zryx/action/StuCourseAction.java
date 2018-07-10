package com.zryx.action;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.zryx.dao.IStuCourseDao;
import com.zryx.entity.StuCourse;

/**   
系统管理action 
 */
@Controller
@Scope("prototype")
public class StuCourseAction extends BaseAction {
	
	private static final long serialVersionUID = 1L;
	@Autowired
	private  IStuCourseDao stuCourseDao;
	private  StuCourse  stuCourse; 
	private List<StuCourse> list;
	
	
	/**
	 * 字典查询 
	 * @return
	 */
	
	public String list() {
		
		Map<String, Object> param=new HashMap<>();
		if (this.isCommit()) {
			param.put("courseName", stuCourse.getCourseName());
			param.put("studentName", stuCourse.getStudentName());
		}
		
		this.getPage().setTotalRows(stuCourseDao.list(param).size());
		param.put("page", this.getPage());
		 list=stuCourseDao.list(param);
		 
		return "list";
	}
	
	/**
	 * 字典新增
	 * @return
	 */
	public String add(){
		int i=stuCourseDao.add(stuCourse);
		System.out.println("添加:"+stuCourse);
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
			stuCourse=stuCourseDao.getObjById(stuCourse.getId());
			System.out.println("-------------"+stuCourse);
			return "update";
		}else{
			int i=stuCourseDao.update(stuCourse);
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
	
		int i=stuCourseDao.delete(stuCourse.getId());
		//响应AJAX请求
		if(i>0){
			this.setMsg("删除操作成功");
		}else{
			this.setMsg("删除操作失败");
		}
		list();
		return list();
	}
	
	public StuCourse getStuCourse() {
		return stuCourse;
	}

	public void setStuCourse(StuCourse stuCourse) {
		this.stuCourse = stuCourse;
	}

	public List<StuCourse> getList() {
		return list;
	}
	public void setList(List<StuCourse> list) {
		this.list = list;
	}
	
	
	
	
	
	
	
}
