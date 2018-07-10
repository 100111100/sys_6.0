package com.zryx.common;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.ServletContext;
import org.springframework.context.ApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;
import net.sf.json.JSONObject;
import com.zryx.dao.IDictDao;
import com.zryx.dao.IMenuDao;
import com.zryx.dao.IRoleDao;
import com.zryx.entity.Dict;
import com.zryx.entity.Menu;
import com.zryx.entity.Role;

/**   
数据字典处理工具，获取数据库信息给自定义标签用，写好后要去initservlat.java来配置，这样才一启动就加载
 */
public class DictUtil {
	/**
	 * 加载字典数据到上下文对象
	 * 
	 * 静态方法，一启动程序就加载数据
	 */
	public static void refreshDict(ServletContext sc){
		
		System.out.println("刷新系统字典数据。。。。。。。。");
		//通过这个对象去查询数据库字典的信息
		//获取web应用中spring容器
		ApplicationContext cxt= WebApplicationContextUtils.getWebApplicationContext(sc);
		IDictDao dictDao=(IDictDao)cxt.getBean("dictDao");
		
		Map<String, Object> param=new HashMap<String, Object>();
		//这里传进去的map是空的，将将所有的记录都查出来
		List<Dict> list=dictDao.list(param);
		//<字典名称name,<字典dkey，字典dval>>,因为有很多个类型的name，而name中的dkey也有多种
		//使用hashmap这样键就不能重复就能根据名字分类成多个hashmap
		Map<String, Map<String,String>> allMap=new  HashMap<String, Map<String,String>>();
		//循环字典列表，将集合中的每个元素的name取出来，
		for (Dict d : list) {
			String name=d.getName();
			//<字典名称name,<字典dkey，字典dval>>
			Map<String,String> m=allMap.get(name);
			//判断以m（m也是一个map）为map的键是否存在，就和在一段字母中筛选出每个字母中每一个字母有多少个一样
			if(m!=null){
				m.put(d.getDkey(), d.getDval());
				
			}else{
				//这里又new而不是使用上面m的地址是为了做有顺序的map
				m=new LinkedHashMap<String, String>();
				m.put(d.getDkey(), d.getDval());
				allMap.put(name, m);
				
			}
		}
		
		//循环字典并按字典名称放到应用上下文、在jsp页面将数据传过去selectag来进行翻译和打印出来
		for (String dn : allMap.keySet()) {
			System.out.println(dn+" : "+allMap.get(dn));
			sc.setAttribute(dn, allMap.get(dn));
		}
		
		
		JSONObject jo = JSONObject.fromObject(allMap);
		System.out.println("字典JSON:" + jo.toString());
		sc.setAttribute("DJSON",jo.toString());
		
	}
	
	
	/**
	 * 加载角色数据到上下文
	 * @param sc
	 */
	public static void refreshRole(ServletContext sc){
		System.out.println("刷新角色数据");
		//获取web应用中spring容器
		ApplicationContext cxt= WebApplicationContextUtils.getWebApplicationContext(sc);
		IRoleDao roleDao=(IRoleDao)cxt.getBean("roleDao");
		Map<String, Object> param=new HashMap<>();
		
		List<Role> list=roleDao.list(param);
		//map<id,name>
		Map<String, String> roleMap=new HashMap<>();
		
		for (Role r : list) {
			roleMap.put(r.getId()+"", r.getName());
		}
		
		//将查询到的数据放到引用上下文给用户等表中的角色翻译
		System.out.println("角色字典数据:"+ roleMap);
		sc.setAttribute("roleMap", roleMap);
		
		
		JSONObject jo = JSONObject.fromObject(roleMap);
		System.out.println("角色JSON:" + jo.toString());
		sc.setAttribute("RJSON",jo.toString());
	}
	
	public static void refreshPmenu(ServletContext sc){
		System.out.println("刷新父菜单数据");
		
		ApplicationContext cxt= WebApplicationContextUtils.getWebApplicationContext(sc);
		IMenuDao menuDao=(IMenuDao)cxt.getBean("menuDao");
	  
		Map<String,Object> param=new HashMap<>();
		List<Menu> list=menuDao.list(param);
		Map<String, String> paMap=new HashMap<>();
		Map<String, String> paMap2=new HashMap<>();
		for (Menu m : list) {
			if(m.getMlevel()!=3){
				paMap.put(m.getId()+"",m.getName());
				paMap2.put(m.getId()+"",m.getName()+"-"+m.getMlevel());
			}
			
		}
		System.out.println("一二级菜单:"+paMap);
		sc.setAttribute("paMap", paMap);
		sc.setAttribute("paMap2", paMap2);
		
		
		JSONObject jo = JSONObject.fromObject(paMap);
		System.out.println("父菜单JSON:" + jo.toString());
		sc.setAttribute("PMJSON",jo.toString());
				
	}
	
	
	
}
