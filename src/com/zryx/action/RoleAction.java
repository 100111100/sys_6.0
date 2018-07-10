package com.zryx.action;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import net.sf.json.JSONArray;

import com.zryx.dao.IMenuDao;
import com.zryx.dao.IRoleDao;
import com.zryx.entity.Menu;
import com.zryx.entity.Role;

/**   
系统管理action 
 */
@Controller
@Scope("prototype")
public class RoleAction extends BaseAction {
	
	private static final long serialVersionUID = 1L;
	@Autowired
	private  IRoleDao roleDao ;
	private  Role  role; 
	private List<Role> list;
	@Autowired
	IMenuDao menuDao ;
	private String menuIds;
	
	
	
	/**
	 * 字典查询 
	 * @return
	 */
	
	public String list() {
		
		Map<String, Object> param=new HashMap<>();
		if (this.isCommit()) {
			param.put("name", role.getName());
			
			
		}
		
		this.getPage().setTotalRows(roleDao.list(param).size());
		param.put("page", this.getPage());
		 list=roleDao.list(param);
		 
		return "list";
	}
	
	/**
	 * 字典新增
	 * @return
	 */
	public String add(){
		int i=roleDao.add(role);
		System.out.println("添加:"+role);
		if(i>0){
			this.setMsg("新增操作成功");
		}else{
			this.setMsg("新增操作失败");
		}
		
		return "list";
	}
	/**
	 * 字典更新
	 * @return
	 */
	public String update(){
		
		if(!this.isCommit()){
			//这里是得到查询到的对象展示出来
			role=roleDao.getObjById(role.getId());
			System.out.println("-------------"+role);
			return "update";
		}else{
			int i=roleDao.update(role);
			if(i>0){
				this.setMsg("更新成功");
			}else{
				this.setMsg("更新失败");
			}
			
		}
		
		return list();
		
	}
	/**
	 * 字典删除
	 * @return
	 */
	public String delete(){
	
		int i=roleDao.delete(role.getId());
		//响应AJAX请求
		if(i>0){
			this.setMsg("删除操作成功");
		}else{
			this.setMsg("删除操作失败");
		}
		list();
		return list();
	}
	
	/**
	 * // 弹出窗口为角色分配菜单
	 * 实现需要要数：
	 * 1该用户的role_id，也就是t_role中的记录id
	 * 2获取到旧的菜单id用于给查询出来的所有菜单做标记，好在menuTree.jsp页面将做了标记的菜单打钩
	 * @param req
	 * @param resp
	 * @throws ServletException
	 * @throws IOException
	 */
	public String menuTree() throws Exception {
		// 查询所有菜单
		Map<String, Object> param = new HashMap<String, Object>();
		// 查询所有菜单
		List<Menu> list1 = menuDao.list(param);
        //当前角色拥有的菜单
		List<Menu> list2 = menuDao.getMenusByRoleId(role.getId());
		// 临时变量(用于判断哪个菜单当前角色已拥有)，用菜单的id记录
		List<Long> menuIds = new ArrayList<Long>();
		for (Menu m : list2) {
			menuIds.add(m.getId());
		}
		// 循环所有的菜单，用已经记录的id来选出角色拥有的菜单，并做权限标记。
		for (Menu o : list1) {
			if (menuIds.contains(o.getId())) {
				o.setChecked(true);
			} else {
				o.setChecked(false);
			}
		}
		// 把对象集合转化成json格式字符串，对象需要继承接口JSONString来转换成指定的格式以便框架ztree的套用
		JSONArray jo2 = JSONArray.fromObject(list1);
		String menuJson = jo2.toString();
		System.out.println("menuJson=" + menuJson);
		// 把集合放到request对象属性中，传送到页面显示（切记还要传该id）
		this.setJsonText(menuJson.toString());
		
		return "menuTree";
	}
	

	
	/**
	 * 更新角色和菜单关系信息（新增和删除）
	 * 实现这一步需要三个要数：
	 * 1该用户的role_id，也就是t_role中的记录id
	 * 2原本拥有的菜单id
	 * 3新的菜单id
	 * @return
	 */
	public String updateR2M() throws Exception {
		List<Menu> list = menuDao.getMenusByRoleId(role.getId());
		// 临时变量(用于判断哪个菜单当前角色已拥有)
		List<String> menuIds = new ArrayList<String>();
		for (Menu m : list) {
			//旧菜单的id串
			menuIds.add(m.getId()+"");
		}		
    	int i = 0;
    	try {
    		//新的菜单ID串
    		String ms = this.getMenuIds();
			//新增的菜单选项
			for (String menuId : ms.split(",")) {
				if (!"".equals(menuId) && !menuIds.contains(menuId)) {//
					roleDao.addRole2Menu(role.getId(),Long.parseLong(menuId));
				}
			}
			//删除的菜单选项，Arrays.asList(ms.split(","));转换成list，判断那个是被删除的菜单id
			List<String> menuList = Arrays.asList(ms.split(","));
			for (String menuId : menuIds) {
				if (menuId!=null && !menuList.contains(menuId)) {//
					roleDao.deleteRole2Menu(role.getId(),Long.parseLong(menuId));
				}
			}
			i = 1;
		} catch (Exception e) {
			e.printStackTrace();
		}
    	
		if (i > 0) {
			this.setJsonText("{'result':'权限分配成功'}");
		} else {
			this.setJsonText("{'result':'权限分配失败'}");

		}
	   return "json";
	}
	
	
	
	
	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}

	public List<Role> getList() {
		return list;
	}
	public void setList(List<Role> list) {
		this.list = list;
	}

	public String getMenuIds() {
		return menuIds;
	}

	public void setMenuIds(String menuIds) {
		this.menuIds = menuIds;
	}
	
	
	
	
	
	
	
}
