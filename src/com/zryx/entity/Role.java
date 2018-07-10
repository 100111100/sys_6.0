package com.zryx.entity;

import java.util.Date;


/**   
角色

切记long是引用类型的
 */
public class Role {
	private Long id;
	private String name;
	private  Date createDate;
	
	
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

	
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	@Override
	public String toString() {
		return "Role [id=" + id + ", name=" + name + ", createDate="
				+ createDate + "]";
	}
	
	
}
