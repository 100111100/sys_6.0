package com.zryx.common;

import java.text.SimpleDateFormat;
import java.util.Date;

/**   
格式化时间工具类 
 */
public class DateUtil {
	public static String  date2Str(Date d){
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		return sdf.format(d);
	}
	
	public static Date Str2date(String d){
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");

		Date date=null;
		
		try {
			date=sdf.parse(d);
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return date;
		
	}
}
