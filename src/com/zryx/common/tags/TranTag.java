package com.zryx.common.tags;

import java.util.Map;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.BodyTagSupport;

/**   
翻译标签，这里仅仅是打印一个值出来而已并不用打印标签
 */
public class TranTag extends BodyTagSupport{

	
	private static final long serialVersionUID = 1L;

		

	//数据map<字典key，字典value>
	private Map<String, String> data;
	//从数据库中得到的value是数字
	private String value;
	
	
	@Override
	public int doStartTag() throws JspException {
		return SKIP_BODY;
	}
	
	@Override
	public int doEndTag() throws JspException {
		
		JspWriter out=pageContext.getOut();
		
		try {
			if(data!=null && data.get(value)!=null){
				out.write(data.get(value));
			}else{
				out.write("--");
			}
			out.flush();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return EVAL_PAGE;//执行标签后的内容
	}

	public Map<String, String> getData() {
		return data;
	}

	public void setData(Map<String, String> data) {
		this.data = data;
	}

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "TranTag [data=" + data + ", value=" + value + "]";
	}
	
	
	
	
	
}
