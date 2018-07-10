package com.zryx.dao;
import java.util.List;
import com.zryx.entity.Menu;

/**   
 * @Title:  com.zryx.dao.IMenuDao.java
 * @Description: TODO(用一句话描述该文件做什么) 
 * @Copyright: Copyright (c) 2017
 * @Company: 中软亚信北京科技有限公司
 * @author: 徐亚明
 * @date: 2018年4月29日 上午10:35:23  
 * @version: V1.0   
 */
public interface IMenuDao extends IBaseDao<Menu> {
	public abstract List<Menu> getMenusByRoleId(long roleId);
}