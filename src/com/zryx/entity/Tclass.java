package com.zryx.entity;

import java.util.Date;

/**   
班级实体类  
 */
public class Tclass {
	//id
	private Long id;
	//班级名字
	private String name;
	//辅导员
	private String charger;
	//创建日期
	private Date createDate;
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
	public String getCharger() {
		return charger;
	}
	public void setCharger(String charger) {
		this.charger = charger;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	@Override
	public String toString() {
		return "Class [id=" + id + ", name=" + name + ", charger=" + charger
				+ ", createDate=" + createDate + "]";
	}
	
	
	
	
}
