package com.zryx.entity;

import java.util.Date;

/**   
学生实体类
 */
public class Student {
	//id
	private Long id;
	//学生名字
	private String name;
	//性别
	private Integer sex;
	//出生日期
	private Date birthday;
	//籍贯
	private String snative;
	//学生班级id，虽然后面不在里面上显示，但是要
	private Long classId;
	//创建日期
	private Date   createDate;
	
	//临时变量。
	private String className;
	
	
	public String getClassName() {
		return className;
	}
	public void setClassName(String className) {
		this.className = className;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getSex() {
		return sex;
	}
	public void setSex(Integer sex) {
		this.sex = sex;
	}

	
	
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public String getSnative() {
		return snative;
	}
	public void setSnative(String snative) {
		this.snative = snative;
	}
	public Long getClassId() {
		return classId;
	}
	public void setClassId(Long classId) {
		this.classId = classId;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	@Override
	public String toString() {
		return "Student [id=" + id + ", name=" + name + ", sex=" + sex
				+ ", brithday=" + birthday + ", snative=" + snative
				+ ", classId=" + classId + ", createDate=" + createDate + "]";
	}
	
	
	
}
