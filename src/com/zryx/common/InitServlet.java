package com.zryx.common;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
/**
 * 系统初始化servlet，这样页面中的路径之类的一些数据就可以动态来改变，还有如标题
 * @author ZHQL
 */
public class InitServlet extends HttpServlet{

	private static final long serialVersionUID = 1L;

	@Override
	public void init(ServletConfig config) throws ServletException {
		System.out.println("系统初始化...");
		//获取上下文对象，因为上下对象一开始服务后就存在
		ServletContext sc = config.getServletContext();
		sc.setAttribute("_title", "Umbrelaa Corporation V5.0");
		//根路径(上下文路径)，获取到该文件的根目录，这样每次跳转都先去根目录，以免路径错误。
		String root = sc.getContextPath();
		System.out.println("---------------"+root) ;
		sc.setAttribute("_cxt", root);
		sc.setAttribute("_css", root+ "/ui/css");
		sc.setAttribute("_img", root+ "/ui/img");
		sc.setAttribute("_js", root+ "/ui/js");
		sc.setAttribute("_plugins", root+ "/ui/plugins");
		
		DictUtil.refreshDict(sc);
		DictUtil.refreshRole(sc);
		DictUtil.refreshPmenu(sc);
	}
}
