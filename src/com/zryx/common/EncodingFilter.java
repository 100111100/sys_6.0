package com.zryx.common;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

/**   
编码过滤器

这这里不是直接设置编码而是通过属性配置，是为了通用。encodingType

不用注解来配是因为要注入参数
 */
public class EncodingFilter implements 	Filter {
	private String encodingType;
	
	@Override
	public void init(FilterConfig fc) throws ServletException {
		encodingType =fc.getInitParameter("encodingType");
		
	}

	@Override
	public void destroy() {
		
	}
	
	@Override
	public void doFilter(ServletRequest req, ServletResponse resp,
			FilterChain fc) throws IOException, ServletException {
			
		req.setCharacterEncoding(encodingType);
		resp.setCharacterEncoding(encodingType);
		resp.setContentType(encodingType);
		fc.doFilter(req, resp);
	}
	 

}
