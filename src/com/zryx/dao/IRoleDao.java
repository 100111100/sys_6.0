package com.zryx.dao;

import com.zryx.entity.Role;

/**   
 * @Title:  com.zryx.dao.IRoleDao2.java
 * @Description: TODO(用一句话描述该文件做什么) 
 * @Copyright: Copyright (c) 2017
 * @Company: 中软亚信北京科技有限公司
 * @author: 徐亚明
 * @date: 2018年4月29日 上午11:57:03  
 * @version: V1.0   
 */
public interface IRoleDao extends IBaseDao<Role> {



	//增加角色和菜单关系
	public abstract int addRole2Menu(long roleId, long menuId);

	//删除角色和菜单关系
	public abstract int deleteRole2Menu(long roleId, long menuId);

}