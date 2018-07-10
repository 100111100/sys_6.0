package com.zryx.action;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.zryx.dao.IStudentDao;
import com.zryx.entity.Student;

/**   
系统管理action 
 */
@Controller
@Scope("prototype")
public class StudentAction extends BaseAction {
	
	private static final long serialVersionUID = 1L;
	@Autowired
	private  IStudentDao studentDao ;
	private  Student  student; 
	private List<Student> list;
	
	
	/**
	 * 字典查询 
	 * @return
	 */
	
	public String list() {
		
		Map<String, Object> param=new HashMap<>();
		if (this.isCommit()) {
			param.put("name", student.getName());
			param.put("sex",student.getSex());
			param.put("className", student.getClassName());
		}
		
		this.getPage().setTotalRows(studentDao.list(param).size());
		param.put("page", this.getPage());
		 list=studentDao.list(param);
		 
		return "list";
	}
	public String slist() {
		
		Map<String, Object> param=new HashMap<>();
		if (this.isCommit()) {
			param.put("name", student.getName());
			param.put("sex",student.getSex());
			param.put("className", student.getClassName());
		}
		
		this.getPage().setTotalRows(studentDao.list(param).size());
		param.put("page", this.getPage());
		list=studentDao.list(param);
		
		return "slist";
	}
	
	/**
	 * 字典新增
	 * @return
	 */
	public String add(){
		int i=studentDao.add(student);
		System.out.println("添加:"+student);
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
			student=studentDao.getObjById(student.getId());
			System.out.println("-------------"+student);
			return "update";
		}else{
			int i=studentDao.update(student);
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
	
		int i=studentDao.delete(student.getId());
		//响应AJAX请求
		if(i>0){
			this.setMsg("删除操作成功");
		}else{
			this.setMsg("删除操作失败");
		}
		list();
		return list();
	}
	
	public Student getStudent() {
		return student;
	}

	public void setStudent(Student student) {
		this.student = student;
	}

	public List<Student> getList() {
		return list;
	}
	public void setList(List<Student> list) {
		this.list = list;
	}
	
	
	
	
	
	
	
}
