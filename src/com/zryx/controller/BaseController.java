package com.zryx.controller;

import java.util.List;
import java.util.Map;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.web.bind.annotation.ModelAttribute;
import com.zryx.common.Page;
/**
 * Controller基类，切记before()函数要加注解，在所有方法前执行
 * @author zhql
 */
public class BaseController<E>{
	ServletContext sc;
	HttpServletRequest req;
	HttpServletResponse resp;
	HttpSession session;
	//请求参数paramData,使用泛型
	E pd;
	//响应参数responseMap
	Map<String,Object> rm;
	boolean commit;
	private Page page;
	
	@ModelAttribute //在请求所有的控制器的方法前执行
	public void before(E obj,boolean commit,Page page,
					   HttpServletRequest request,
			           HttpServletResponse response,
			           Map<String,Object> rMap){
		System.out.println("------------------Controller前置处理()-------------------");
		this.req = request;
		this.resp = response;
		this.session = req.getSession();
		this.sc = request.getServletContext();
		this.pd = obj;
		this.rm = rMap;
		this.commit = commit;
		this.page = page;
		rm.put("command",pd);//为了信息回显
	}
	//设置返回页面的提示信息
	public void setMsg(String msg){
		rm.put("msg",msg);
	}
	//设置返回页面的数据集合
	public void setList(List<E> list){
		rm.put("list",list);
	}
	public Page getPage() {
		if(page == null){
			page = new Page();
		}
		return page;
	}
}
