package com.zryx.action;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.zryx.dao.ITclassDao;
import com.zryx.entity.Tclass;

/**   
系统管理action 
 */
@Controller
@Scope("prototype")
public class TclassAction extends BaseAction {
	
	private static final long serialVersionUID = 1L;
	@Autowired
	private  ITclassDao tclassDao ;
	private  Tclass  tclass; 
	private List<Tclass> list;
	
	
	/**
	 * 字典查询 
	 * @return
	 */
	
	public String list() {
		
		Map<String, Object> param=new HashMap<>();
		if (this.isCommit()) {
			param.put("name", tclass.getName());
			param.put("charger", tclass.getCharger());
		}
		
		this.getPage().setTotalRows(tclassDao.list(param).size());
		param.put("page", this.getPage());
		 list=tclassDao.list(param);
		 
		return "list";
	}
	public String slist() {
		
		Map<String, Object> param=new HashMap<>();
		if (this.isCommit()) {
			param.put("name", tclass.getName());
			param.put("charger", tclass.getCharger());
		}
		
		this.getPage().setTotalRows(tclassDao.list(param).size());
		param.put("page", this.getPage());
		list=tclassDao.list(param);
		
		return "slist";
	}
	
	/**
	 * 字典新增
	 * @return
	 */
	public String add(){
		int i=tclassDao.add(tclass);
		System.out.println("添加:"+tclass);
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
			tclass=tclassDao.getObjById(tclass.getId());
			System.out.println("-------------"+tclass);
			return "update";
		}else{
			int i=tclassDao.update(tclass);
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
	
		int i=tclassDao.delete(tclass.getId());
		//响应AJAX请求
		if(i>0){
			this.setMsg("删除操作成功");
		}else{
			this.setMsg("删除操作失败");
		}
		list();
		return list();
	}
	
	public Tclass getTclass() {
		return tclass;
	}

	public void setTclass(Tclass tclass) {
		this.tclass = tclass;
	}

	public List<Tclass> getList() {
		return list;
	}
	public void setList(List<Tclass> list) {
		this.list = list;
	}
	
	
	
	
	
	
	
}
