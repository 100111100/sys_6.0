package com.zryx.dao;
import java.util.List;
import org.springframework.stereotype.Repository;
import com.zryx.entity.Menu;

/**   
 * 连接数据数据查询数据
 菜单DAO类 
 

	
 */
@Repository
public class MenuDao extends BaseDao<Menu> implements IMenuDao{
	

	@Override
	public List<Menu> getMenusByRoleId(long roleId) {
		List<Menu> list = this.getSqlSession().selectList(this.getNS("getMenusByRoleId"),roleId);
		return list;
	}
	

}

	

