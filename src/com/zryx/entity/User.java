package com.zryx.entity;

import java.io.Serializable;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;

/**   
 * 搜集用户名和密码
用户实体类
//相当与MVC里面的m（物理模型）
 * 切记long是引用类型的 interger也是
 * 
 * 
 * 
 * longin.jsp上传数据到Sysservlet.java 》》调用userdao获取数据库信息对比，userdao返回的结果是一旦对比上就返回一个user的对象
 * 不然就返回一个空的user对象，sysssersion.java根据返回的结果重定向是首页还是登陆界面。
 * 
 */
public class User implements Serializable {

	private static final long serialVersionUID = 1L;
	
	private Long id;
	private String name;
	//性别（1-男，2-女）
	private Integer sex;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	@JsonFormat(pattern = "yyyy-MM-dd")  
	private Date birthday;
	private String username;
	private String  password;
	private Integer loginFlag;
	private Long    roleId;
	private String  filePath;
	@JsonFormat(pattern="yyyy-MM-dd")
	@DateTimeFormat(pattern="yyyy-MM-dd")
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
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Integer getLoginFlag() {
		return loginFlag;
	}
	public void setLoginFlag(Integer loginFlag) {
		this.loginFlag = loginFlag;
	}
	public Long getRoleId() {
		return roleId;
	}
	public void setRoleId(Long roleId) {
		this.roleId = roleId;
	}
	public String getFilePath() {
		return filePath;
	}
	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", name=" + name + ", sex=" + sex
				+ ", birthday=" + birthday + ", username=" + username
				+ ", password=" + password + ", loginFlag=" + loginFlag
				+ ", roleId=" + roleId + ", filePath=" + filePath
				+ ", createDate=" + createDate + "]";
	}
	
	
	
	
}
