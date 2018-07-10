package com.zryx.common;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

/**   
系统配置属性操作
 */
public class Config {
	public static Map<String,String> map=new HashMap<String,String>();
	
	//配置文件的数据，只是加载一次
	static{
		FileInputStream fis=null;
		try {
			String path=DBUitl.class.getResource("/sys.properties").getPath();
			System.out.println("系统文件配置文件路径:"+path);
			 fis=new FileInputStream(path);
			Properties pro=new Properties();
			pro.load(fis);
		
			for (Object key : pro.keySet()) {
				map.put(key+"", pro.getProperty(key+""));
			}
			System.out.println("="+map);
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			try {
				fis.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}

}
