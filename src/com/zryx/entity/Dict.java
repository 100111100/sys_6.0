package com.zryx.entity;

import java.util.Date;

/**   
字典管理
切记long是引用类型的

 */
public class Dict {
	
	private Long id;
	private String name;
	private String dkey;
	private String dval;
	private Integer useFlag;
	private Integer orderNo;
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
	public String getDkey() {
		return dkey;
	}
	public void setDkey(String dkey) {
		this.dkey = dkey;
	}
	public String getDval() {
		return dval;
	}
	public void setDval(String dval) {
		this.dval = dval;
	}
	public Integer getUseFlag() {
		return useFlag;
	}
	public void setUseFlag(Integer useFlag) {
		this.useFlag = useFlag;
	}
	public Integer getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(Integer orderNo) {
		this.orderNo = orderNo;
	}

	
	
	
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	@Override
	public String toString() {
		return "Dict [id=" + id + ", name=" + name + ", dkey=" + dkey
				+ ", dval=" + dval + ", useFlag=" + useFlag + ", orderNo="
				+ orderNo + ", createDate=" + createDate + "]";
	}

	
	
	
	
	
	
}
