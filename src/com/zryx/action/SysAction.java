package com.zryx.action;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.zryx.dao.IMenuDao;
import com.zryx.dao.IUserDao;
import com.zryx.entity.Menu;
import com.zryx.entity.User;

/**   
系统管理action 

设计就算登陆了也不能通过url来访问该资源下的其他路径：
想查出系统中的的2,3级路径和用户拥有的2,3级路径，用list来存进去session中，在拦截器中在校验用户存在之后在
对用户中拥有的2,3级路径是存在在系统的url中，有就可访问。
 */
@Controller
@Scope("prototype")
public class SysAction extends BaseAction {

	private static final long serialVersionUID = 1L;
	@Autowired
	private  IUserDao userDao ;
	@Autowired
	private  IMenuDao menuDao ;
	private  User  user; 
	
	/**
	 * 用户登陆
	 * @return
	 * @throws Exception
	 */
	public String login() throws Exception {
	
	
		if(user==null 
		|| "".equals(user.getUsername().trim())    || user.getUsername()==null
		|| "".equals(user.getPassword().trim())|| user.getPassword()==null){
			
		  this.setMsg("用户名或密码不能为空");
			return "login";
		}
		
		Map<String, Object> param =new  HashMap<String, Object>();
		param.put("username", user.getName());
		param.put("password", user.getPassword());
		
	     List<User> list = userDao.list(param);
		HttpSession session=req.getSession();//这个是用来退出的。
		User u=null;
		if(list.size()>0){//登录成功
			u=list.get(0);
			if(u.getLoginFlag()==1){
				
				//这里两段是处理菜单权限的
				//当前用户拥有的菜单权限
				List<Menu> ulist=menuDao.getMenusByRoleId(u.getRoleId());
				param.clear();
				//系统所有菜单
				List<Menu> allList=menuDao.list(param);
				//<父菜单对象,父菜单对应下的所有子菜单集合>
				Map<Menu,List<Menu>> map = new TreeMap<Menu, List<Menu>>();
				//装父菜单的临时map<菜单ID,菜单对象>
				Map<Long,Menu> temp = new HashMap<Long, Menu>();
				List<String> allPrivs = new ArrayList<>();
				//循环所有菜单获取系统所有菜单
				for (Menu m : allList) {
					if(m.getMlevel()!=1){
						allPrivs.add(m.getUrl().trim());
					}
				}
				List<String> uPrivs = new ArrayList<>();

				// 处理一级菜单
				//先根据登陆用户的role_id查询他所拥有的菜单，再根据菜单的mlevel来分配
				for (Menu m1 : ulist) {
					if (m1.getMlevel() == 1) {
						//将父菜单存在临时temp中，为了下面用子菜单的pid可以得到属于他的那个父菜单。
						temp.put(m1.getId(), m1);
						//又将父菜单作为key存在map中
						map.put(m1, new ArrayList<Menu>());
					}else {
						uPrivs.add(m1.getUrl().trim());
					}
				}
				//System.out.println("temp.get(1):"+temp.get(1l));  这里测试得出因为上面定义是long类型的key，所有得用long类型的数据才能得到正确的数据。
				// 处理二级菜单
				for (Menu m2 : ulist) {
					if(m2.getMlevel() == 2) {
						//获得该二级菜单对应父菜单对象************************这里需要进行强转long类型，不然获取不到数据
						Menu pm = temp.get((long)m2.getPid());
						// 把该二级菜单放到它对应父菜单的子菜单集合
						if (pm!=null && map.get(pm) != null) {
							map.get(pm).add(m2);
							
						}
					}
				}
				//用户菜单权限放到会话中
				session.setAttribute("umenu", map);
				//把用户对象当做已经登陆的凭证。如果退出的话就将这个用户销毁，这样为了正常退出后立刻直接输入地址就会因此查询不到对象而报错
				session.setAttribute("user", u);
				//系统的所有菜单。
				session.setAttribute("allPrivs", allPrivs);
				//当前用户拥有的菜单
				session.setAttribute("uPrivs", uPrivs);
				return "index";
			}else{
				this.setMsg("用户状态无效");
			}
		}else{
			this.setMsg("用户名或密码有误");
		}

		return "login";
	}
	/**
	 * 用户注册
	 * @return
	 * @throws Exception
	 */
	public String register() throws Exception {
		
		
		return "login";
	}
	/**
	 * 用户退出
	 * @return
	 * @throws Exception
	 */
	public String logout() throws Exception {
		
		HttpSession session=req.getSession();
		//这个是用来退出的,且下面两个位置不能反过来
		session.removeAttribute("user");
		session.invalidate();
		this.setMsg("系统正常退出");
		
		return "login";
		
	}
	
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
	
	
}
