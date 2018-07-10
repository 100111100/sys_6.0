package com.zryx.entity;

import java.util.Date;

/**   
选课管理实体类 
 */
public class StuCourse {
	//记录ID(PK)
	private Long id;
	//学生ID(FK)
	private Long studentId;
	//课程ID(FK)
	private Long courseId;

	//备注
	private String remark;
	//创建日期
	private Date createDate;
	
	//临时变量,用于显示学生名字和课程名字，但是add和update的时候需要用上面的studentId，studentId来操作。
	private String studentName;
	
	private String  courseName;
	//学分
	private Float credit;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getStudentId() {
		return studentId;
	}

	public void setStudentId(Long studentId) {
		this.studentId = studentId;
	}

	public Long getCourseId() {
		return courseId;
	}

	public void setCourseId(Long courseId) {
		this.courseId = courseId;
	}

	public Float getCredit() {
		return credit;
	}

	public void setCredit(Float credit) {
		this.credit = credit;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public String getStudentName() {
		return studentName;
	}

	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}

	public String getCourseName() {
		return courseName;
	}

	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}

	@Override
	public String toString() {
		return "StuCourse [id=" + id + ", studentId=" + studentId
				+ ", courseId=" + courseId + ", credit=" + credit + ", remark="
				+ remark + ", createDate=" + createDate + ", studentName="
				+ studentName + ", courseName=" + courseName + "]";
	}
	
	
	
	
	
	

}
