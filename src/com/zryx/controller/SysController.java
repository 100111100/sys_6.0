package com.zryx.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.zryx.dao.IMenuDao;
import com.zryx.dao.IUserDao;
import com.zryx.entity.Menu;
import com.zryx.entity.User;
/**
 * 登录验证/退出系统/用户注册
 * @author ZHQL
 */
@Controller
@Scope("prototype")
@RequestMapping("sys")
public class SysController extends BaseController<User> {

	@Autowired
	private IUserDao userDao;
	@Autowired
	private IMenuDao menuDao;
	
	@RequestMapping("login")
	public String login() throws Exception {
		if(pd == null || pd.getUsername()==null || pd.getPassword()==null 
		    ||  "".equals(pd.getUsername().trim()) || "".equals(pd.getPassword().trim())){
			
			this.setMsg("请输入用户名或密码");
			return "common/login";			
		}
		Map<String,Object> param = new HashMap<String,Object>();
		param.put("username", pd.getUsername());
		param.put("password", pd.getPassword());
		List<User> list = userDao.list(param);
		HttpSession session = req.getSession();
		if(list.size() > 0){
			User u = list.get(0);
			if(u.getLoginFlag()==1){
				//当前用户拥有的菜单权限
				List<Menu> ulist=menuDao.getMenusByRoleId(u.getRoleId());
				param.clear();
				List<Menu> allList = menuDao.list(param);
				//<父菜单对象,父菜单对应下的所有子菜单集合>
				Map<Menu,List<Menu>> map = new TreeMap<Menu, List<Menu>>();
				//装父菜单的临时map<菜单ID,菜单对象>
				Map<Long,Menu> temp = new HashMap<Long, Menu>();
				List<String> allPrivs = new ArrayList<>();
				for (Menu m : allList) {
					if(m.getMlevel()!=1){
						allPrivs.add(m.getUrl().trim());
					}
				}
				//用户权限(增删改权限)
				List<String> uPrivs = new ArrayList<>();
				// 处理一级菜单
				for (Menu m1 : ulist) {
					if (m1.getMlevel() == 1) {
						temp.put(m1.getId(), m1);
						map.put(m1, new ArrayList<Menu>());
					}else{
						uPrivs.add(m1.getUrl().trim());
					}
				}
				// 处理二级菜单
				for (Menu m2 : ulist) {
					if(m2.getMlevel() == 2) {
						//获得该二级菜单对应父菜单对象
						Menu pm = temp.get((long)m2.getPid());
						// 把该二级菜单放到它对应父菜单的子菜单集合
						if (pm!=null && map.get(pm) != null) {
							map.get(pm).add(m2);
						}
					}
				}
				//把用户对象放到会话当作已登录的凭证
				session.setAttribute("user",u);
				//用户菜单
				session.setAttribute("umenu", map);
				System.out.println("角色菜单:"+map);
				//系统所有权限
				session.setAttribute("allPrivs", allPrivs);
				session.setAttribute("uPrivs", uPrivs);				
				return "common/index";
			}else{
				this.setMsg("用户名无效");
			}			
		}else{
			this.setMsg("用户名或密码有误");
		}
		return "common/login";	
	}
	
	@RequestMapping("logout")
	public String logout()throws Exception{
		HttpSession session = req.getSession();
		session.removeAttribute("user");
		session.invalidate();
		this.setMsg("正常退出系统");
		return "common/login";
	}
	
	@RequestMapping("register")
	public String register(HttpServletRequest req, HttpServletResponse resp){
		return "common/login";
	}
}
