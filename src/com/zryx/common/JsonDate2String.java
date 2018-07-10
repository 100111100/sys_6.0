package com.zryx.common;

import java.text.SimpleDateFormat;
import java.util.Date;

import net.sf.json.JsonConfig;
import net.sf.json.processors.JsonValueProcessor;

/**   
这里是改变json默认时间格式处理方式。			
 */
public class JsonDate2String implements JsonValueProcessor {

	@Override
	public Object processArrayValue(Object arg0, JsonConfig arg1) {
		
		return null;
	}

	@Override
	public Object processObjectValue(String a1, Object a2, JsonConfig a3) {
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		
		try {
			if(a2 instanceof Date){
				return sdf.format(a2);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}

}
