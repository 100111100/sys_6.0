package com.zryx.action;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.zryx.dao.ICourseDao;
import com.zryx.entity.Course;

/**   
系统管理action 
 */
@Controller
@Scope("prototype")
public class CourseAction extends BaseAction {
	
	private static final long serialVersionUID = 1L;
	@Autowired
	private  ICourseDao courseDao ;
	private  Course  course; 
	private List<Course> list;
	
	
	/**
	 * 字典查询 
	 * @return
	 */
	
	public String list() {
		
		Map<String, Object> param=new HashMap<>();
		if (this.isCommit()) {
			param.put("name", course.getName());
			param.put("teacherName", course.getTeacherName());
			param.put("cyear", course.getCyear());
			param.put("schTerm", course.getSchTerm());
			
		}
		
		this.getPage().setTotalRows(courseDao.list(param).size());
		param.put("page", this.getPage());
		 list=courseDao.list(param);
		 
		return "list";
	}
	public String slist() {
		
		Map<String, Object> param=new HashMap<>();
		if (this.isCommit()) {
			param.put("name", course.getName());
			param.put("teacherName", course.getTeacherName());
			param.put("cyear", course.getCyear());
			param.put("schTerm", course.getSchTerm());
			
		}
		
		this.getPage().setTotalRows(courseDao.list(param).size());
		param.put("page", this.getPage());
		list=courseDao.list(param);
		
		return "slist";
	}
	
	/**
	 * 字典新增
	 * @return
	 */
	public String add(){
		int i=courseDao.add(course);
		System.out.println("添加:"+course);
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
			course=courseDao.getObjById(course.getId());
			System.out.println("-------------"+course);
			return "update";
		}else{
			int i=courseDao.update(course);
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
	
		int i=courseDao.delete(course.getId());
		//响应AJAX请求
		if(i>0){
			this.setMsg("删除操作成功");
		}else{
			this.setMsg("删除操作失败");
		}
		list();
		return list();
	}
	
	public Course getCourse() {
		return course;
	}

	public void setCourse(Course course) {
		this.course = course;
	}

	public List<Course> getList() {
		return list;
	}
	public void setList(List<Course> list) {
		this.list = list;
	}
	
	
	
	
	
	
	
}
