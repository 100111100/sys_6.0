package com.zryx.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.zryx.common.Page;
import com.zryx.dao.IMenuDao;
import com.zryx.entity.Menu;

/**
 * 字典业务处理类
 * 
 * 流程：从页面过去
 * 
 * @author zhql
 */
@Controller
@Scope("prototype")
@RequestMapping("menu")
public class MenuController extends BaseController<Menu> {

	@Autowired
	private IMenuDao menuDao;

	//查询列表
	@RequestMapping("list")
	public String list() throws Exception {
		
		Map<String,Object> param = new HashMap<String,Object>();
		//当前页码
		if (this.commit) {
			
			param.put("name", pd.getName());
			param.put("mlevel",pd.getMlevel());
			param.put("pid", pd.getPid());
			
			
		}
		Page p = this.getPage();
		param.put("page",p);//把分页对象传到Dao
		List<Menu> list = menuDao.list(param);
		this.setList(list);
		//获取总记录数
		p.setTotalRows((int)((com.github.pagehelper.Page<Menu>)list).getTotal());
        return "menu/list";
	}
	//新增(业务模型-MVC中的M)
	@RequestMapping("add")
	public String add() throws Exception {
		int i = menuDao.add(pd);
		if(i>0){
			this.setMsg("新增成功");
		}else{
			this.setMsg("新增失败");
		}
		return "menu/list";
	}
	//删除(业务模型-MVC中的M)
	@RequestMapping("delete")
	public String del() throws Exception {
		int i = menuDao.delete(pd.getId());
		if(i>0){
			this.setMsg("删除成功");
		}else{
			this.setMsg("删除失败");
		}
		return "menu/list";
	}
	//更新(业务模型-MVC中的M)
	@RequestMapping("update")
	public String update() throws Exception {
		System.out.println("pd:"+pd);
		if(!this.commit){//初始化更新页面
			pd = menuDao.getObjById(pd.getId());
			this.rm.put("command",pd);//回显示数据
			return "menu/update";
		}else{//更新提交
			int i = menuDao.update(pd);
			if(i>0){
				this.setMsg("更新成功");
			}else{
				this.setMsg("更新失败");
			}
			return "menu/list";
		}
		
	}
}












