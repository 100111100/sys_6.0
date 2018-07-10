package com.zryx.entity;

import java.io.Serializable;
import java.util.Date;



import net.sf.json.JSONString;

/**   
菜单实体类
 */
public class Menu implements Comparable<Menu>,Serializable,JSONString {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	//菜单ID(PK)
	private Long  id;
	//菜单名称
	private String name;
	//链接路径
	private String url;
	//父菜单(FK)
	private Integer pid;
	//级别(1-一级,2-二级,3-权限)
	private Integer mlevel;
	//创建日期
	private Date  createDate;
	//表示该菜单是否已经被分配(是为分配权限做准备的)
	private boolean checked;
	
	
	
	
	public boolean isChecked() {
		return checked;
	}
	public void setChecked(boolean checked) {
		this.checked = checked;
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
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public Integer getPid() {
		return pid;
	}
	public void setPid(Integer pid) {
		this.pid = pid;
	}
	public Integer getMlevel() {
		return mlevel;
	}
	public void setMlevel(Integer mlevel) {
		this.mlevel = mlevel;
	}


	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	@Override
	public String toString() {
		return "Menu [id=" + id + ", name=" + name + ", url=" + url + ", pid="
				+ pid + ", mlevel=" + mlevel 
				+ ", createDate=" + createDate + "]";
	}
	
	@Override
	public int compareTo(Menu o) {
		if(this.getId() > o.id){
			return 1;
		}else if(this.getId() < o.id){
			return -1;
		}else{
			return 0;
		}
		
	}
	
	//指定对象转成json格式的时候是以什么格式转，pid中间的i是大写的，字符串要加单引号。为了后面做树形结构的时候传进去的json符合框架中需要的json
	@Override
	public String toJSONString() {
		String json = "{id:"+ this.id +",pId:"+ this.pid
				+",name:'"+this.name+"',open:"
			    + (this.mlevel==1?true:false)+",checked:"+ this.checked +"}";
		return json;
	}
	

    
}
