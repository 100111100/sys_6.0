package com.zryx.action;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.zryx.dao.IDictDao;
import com.zryx.entity.Dict;

/**   
系统管理action 
 */
@Controller
@Scope("prototype")
public class DictAction extends BaseAction {
	
	private static final long serialVersionUID = 1L;
	@Autowired
	private  IDictDao dictDao ;
	private  Dict  dict; 
	private List<Dict> list;
	
	
	/**
	 * 字典查询 
	 * @return
	 */
	
	public String list() {
		
		Map<String, Object> param=new HashMap<>();
		if (this.isCommit()) {
			param.put("name", dict.getName());
			param.put("dkey", dict.getDkey());
			param.put("useFlag", dict.getUseFlag());
			
		}
		
		this.getPage().setTotalRows(dictDao.list(param).size());
		param.put("page", this.getPage());
		 list=dictDao.list(param);
		 
		return "list";
	}
	
	/**
	 * 字典新增
	 * @return
	 */
	public String add(){
		int i=dictDao.add(dict);
		System.out.println("添加:"+dict);
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
			dict=dictDao.getObjById(dict.getId());
			System.out.println("-------------"+dict);
			return "update";
		}else{
			int i=dictDao.update(dict);
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
	
		int i=dictDao.delete(dict.getId());
		//响应AJAX请求
		if(i>0){
			this.setMsg("删除操作成功");
		}else{
			this.setMsg("删除操作失败");
		}
		list();
		return list();
	}
	
	public Dict getDict() {
		return dict;
	}

	public void setDict(Dict dict) {
		this.dict = dict;
	}

	public List<Dict> getList() {
		return list;
	}
	public void setList(List<Dict> list) {
		this.list = list;
	}
	
	
	
	
	
	
	
}
