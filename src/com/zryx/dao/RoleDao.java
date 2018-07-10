package com.zryx.dao;
import java.util.HashMap;
import java.util.Map;
import org.springframework.stereotype.Repository;
import com.zryx.entity.Role;

/**   
 * 连接数据数据查询数据
 角色DAO类 
 
 只有角色名称查询
 */
@Repository
public class RoleDao extends BaseDao<Role> implements IRoleDao{
	
	
	//增加角色和菜单关系
	@Override
	public int addRole2Menu(long roleId,long menuId){
		Map<String,Object> param = new HashMap<>();
		param.put("roleId",roleId);
		param.put("menuId",menuId);
		int i = this.getSqlSession().insert(this.getNS("addRole2Menu"),param);
		return i;		
	}
	//删除角色和菜单关系
	@Override
	public int deleteRole2Menu(long roleId,long menuId){
		Map<String,Object> param = new HashMap<>();
		param.put("roleId",roleId);
		param.put("menuId",menuId);
		int i = this.getSqlSession().delete(this.getNS("deleteRole2Menu"),param);
		return i;		
	}
	


}

	