package com.zryx.action;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.util.ServletContextAware;

import com.opensymphony.xwork2.ActionSupport;
import com.zryx.common.Page;

/**   
action 基类
 */

public class BaseAction extends ActionSupport implements ServletContextAware,ServletRequestAware,ServletResponseAware{
	private static final long serialVersionUID = 1L;

	HttpServletResponse resp;
	HttpServletRequest req;
	ServletContext sc;
	
	//提示信息
	private String msg;
	
	//判断表单是否提交
	private boolean commit;
	
	//分页对象。
	private Page page;
	
	//专门返回json字符串
	
	private String jsonText;
	
	
	
	@Override
	public void setServletResponse(HttpServletResponse resp) {
		this.resp=resp;
	}

	@Override
	public void setServletRequest(HttpServletRequest req) {
		this.req=req;
	}

	@Override
	public void setServletContext(ServletContext sc) {
		this.sc=sc;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public boolean isCommit() {
		return commit;
	}

	public void setCommit(boolean commit) {
		this.commit = commit;
	}

	public Page getPage() {
		if(page==null){//第一次查询的时候page为null。
			 page=new Page();
			
		}
	 
		return page;
	}

	public void setPage(Page page) {
		
		this.page = page;
	}

	public String getJsonText() {
		return jsonText;
	}

	public void setJsonText(String jsonText) {
		this.jsonText = jsonText;
	}
	
	
	
	
	

}
