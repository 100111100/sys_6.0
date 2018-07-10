package com.zryx.common;

import java.io.IOException;
import java.util.List;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * 文件过滤器
 * @author Administrator
 *
 */
//@WebFilter({"*.do","*.jsp"})
public class LoginFilter implements Filter {

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain fc) throws IOException, ServletException {
		HttpServletRequest req=(HttpServletRequest)request;
		HttpServletResponse resp=(HttpServletResponse)response;
		String uri=req.getRequestURI();
		
		HttpSession session=req.getSession();
		if(uri.endsWith("login.do")
		  ||uri.endsWith("register.jsp")
		  ||uri.endsWith("sys_login.do")
		  ||uri.endsWith("sys_register.do")
		  ||uri.endsWith("sys_logout.do")
		  ||uri.endsWith("user_unExist.do")
		  ||uri.endsWith(req.getContextPath()+"/")
		 
				){
			fc.doFilter(request, response);//特殊资源，不登陆也可以访问
		}else if(session.getAttribute("user")!=null){
			@SuppressWarnings("unchecked")
			List<String> allPrivs = (List<String> )session.getAttribute("allPrivs");
			@SuppressWarnings("unchecked")
			List<String> uPrivs = (List<String> )session.getAttribute("uPrivs");
			String[] s=uri.split("/");
			String priv=s[s.length-1];
			if(!allPrivs.contains(priv) ||
				(allPrivs.contains(priv) && uPrivs.contains(priv))){
				fc.doFilter(request, response);//放行
			}else{
				System.out.println("被拦截的路径:"+uri+" 没有该路径的操作权限");
				//请求转发
				request.getRequestDispatcher("/common/index.jsp").forward(req, resp);
				
			}
			
		}else{
			System.out.println("被拦截的路径:"+uri);
//			请求转发，因为有struts拦截器，在没有登陆的情况下敲其他路径会出现没有发现struts的错误信息
//			所有在请求转发回去的jsp文件中不能存在struts的标签
			request.getRequestDispatcher("/common/x.jsp").forward(req, resp);
			
		}
		
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
		
	}

}
