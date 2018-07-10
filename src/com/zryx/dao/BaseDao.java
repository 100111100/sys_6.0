package com.zryx.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import com.github.pagehelper.PageHelper;
import com.zryx.common.Page;
/**
 * Dao基类，包括Dao常用的5个方法
 * @author zhql
 */
public class BaseDao<E> extends SqlSessionDaoSupport implements IBaseDao<E>{
	@Autowired
	public void setSqlSessionTemplate(SqlSessionTemplate sqlSessionTemplate){
		//注入Mybatis操作模板,通过使用SqlSessionFactory作为构造方法的参数来创建。（application.xml中）
		super.setSqlSessionTemplate(sqlSessionTemplate);		
	}
    //获取当前命名空间，通过继承和泛型会实现谁调用他this.getClass.getSimpleName()就获取到谁的类名，加上拼接就成了命名空间。
    public String getNS(String id){//dictDao.update,DictDao
       String className = this.getClass().getSimpleName();
       String ns = className.substring(0,className.length()-3)+ "Mapper."+id;
       System.out.println("命名空间.ID:" + ns);//这个id是要执行的方法
       return ns;
    }  	
	@Override
	public List<E> list(Map<String,Object> param) {
		String className = this.getClass().getSimpleName();
	    String cname = className.substring(0,className.length()-3);
		Map<String,Object> map = new HashMap<String, Object>();
		map.put(cname, param);
		// 分页处理
		Page page = (Page) param.get("page");
		if (page != null) {// 设置当前页码和每页记录数
			PageHelper.startPage(page.getCurrentPage(), page.getRowsPerPage());
		}
		// 分页处理
		List<E> list = this.getSqlSession().selectList(getNS("findList"),map);
		if(page != null){//把总记录数返回,因为page和我们写的类冲突了，所以要加全路径
			page.setTotalRows((int)((com.github.pagehelper.Page<E>)list).getTotal());
		}
		return list;
	}
	@Override
	public E getObjById(long id) {
		E obj = this.getSqlSession().selectOne(getNS("findById"),id);
		return obj;
	}
	@Override
	public int add(E obj) {
		int i = this.getSqlSession().insert(getNS("add"),obj);
		return i;
	}
	@Override
	public int delete(long id) {
		int i = this.getSqlSession().delete(getNS("deleteById"),id);
		return i;
	}
	@Override
	public int update(E obj) {
		int i = this.getSqlSession().update(getNS("update"),obj);
		return i;
	}
}
