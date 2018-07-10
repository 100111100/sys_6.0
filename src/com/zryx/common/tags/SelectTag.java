package com.zryx.common.tags;

import java.util.Map;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.BodyTagSupport;

/**   
 下拉框标签
 （是在字典表里面取到的1-男，2-女，1-正常，2-无效，用在字典表的list.jsp里面，
 但是用户的list.jsp表里面也可以用。因为是存进去ServletContext全局中，哪里都可以用）
 
 是先使用使用DictUtil.java中的静态方法获取数据库数据，将数据库中的数据装到servletContext全局对象中，
 在list.jsp加载的时候会将数据通过mt-tld传到selectTag也就是本类中将本类的数据进行初始化，再通过继承
 BodyTagSupport类的接口将标签和数据打印在jsp页面中。
 
 */
public class SelectTag extends BodyTagSupport {

	
	private static final long serialVersionUID = 1L;
	
	//这些傻逼数据相当在jsp进行初始化
	
	//数据map<字典key，字典value>
	private Map<String, String> data;//这里是装数据库查过来的map数据的
	private String value;//这个是为了有的下拉框有value这个选项用的
	private String name;//就是为了传该数据到提交的地方而已，和原本作用一样
	private String cssClass;
	private String id;
	
	//可写，可不写，格式：  0：--请选择--
	private String header;

	
	@Override
	public int doStartTag() throws JspException {
		//什么都不做，直接跳过
		return SKIP_BODY;
	}
	
	
	@Override
	public int doEndTag() throws JspException {
		//通过页面上下文获取指向页面的输出流，因为上下文加载更快，所有这里可以获取到
		JspWriter out=pageContext.getOut();
		try {
			//打印开始标签
			StringBuilder s=new StringBuilder();
			s.append("<select"+(id!=null?" id='"+id+"'":"")
			+(name!=null?" name='"+name+"'":"")
			+(cssClass!=null?" class='"+cssClass+"'":"")
			+" >\n");
					
			//这里打印首选项，下面打印n个预备选项
			if(header!=null && !header.equals("")){
				String[] h=header.split(":");
				s.append("<option value='"+h[0]+"'>"+h[1]+"</option>\n");
				
			}
			
			if(data!=null && data.size()>0){
				//循环从jsp页面传过来的数据转成map集合，再使用key来插入对应的value
				//使用for来获取到每一条数据1=男，或2=女，形式的数据
				for(Map.Entry<String, String> e:data.entrySet()){
					if(value!=null && !value.equals("") && value.equals(e.getKey())){
						s.append("<option selected='selected' value='"+e.getKey()+"'>"
								+e.getValue()+"</option>\n");
					}else{
						
						s.append("<option value='"+e.getKey() +"'>"+e.getValue()+"</option>\n");
					}
				}
			}
			//打印结束标签
			s.append("</select>\n");
			out.write(s.toString());
			out.flush();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return EVAL_PAGE;
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


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getCssClass() {
		return cssClass;
	}


	public void setCssClass(String cssClass) {
		this.cssClass = cssClass;
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public String getHeader() {
		return header;
	}


	public void setHeader(String header) {
		this.header = header;
	}


	public static long getSerialversionuid() {
		return serialVersionUID;
	}


	@Override
	public String toString() {
		return "SelectTag [data=" + data + ", value=" + value + ", name="
				+ name + ", cssClass=" + cssClass + ", id=" + id + ", header="
				+ header + "]";
	}
	
	
	
	

	
	
	
	
}
