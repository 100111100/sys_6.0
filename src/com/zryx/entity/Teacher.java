package com.zryx.entity;

import java.util.Date;

/**   
老师实体类
 */
public class Teacher {
	//记录id
	private Long id;
	//姓名
	private String name;
	//性别
	private Integer sex;
	//出生日期
	private Date birthday;
	//开始工作日期
	private Date workDate;
	//专业方向
	private String specialty;
	//职称等级
	private Integer tlevel;
	//创建日期
	private Date   createDate;
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
	public Date getWorkDate() {
		return workDate;
	}
	public void setWorkDate(Date workDate) {
		this.workDate = workDate;
	}
	public String getSpecialty() {
		return specialty;
	}
	public void setSpecialty(String specialty) {
		this.specialty = specialty;
	}
	public Integer getTlevel() {
		return tlevel;
	}
	public void setTlevel(Integer tlevel) {
		this.tlevel = tlevel;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	@Override
	public String toString() {
		return "Teacher [id=" + id + ", name=" + name + ", sex=" + sex
				+ ", dirthday=" + birthday + ", workDate=" + workDate
				+ ", specialty=" + specialty + ", tlevel=" + tlevel
				+ ", createDate=" + createDate + "]";
	}
	
	
	
	
}
