package com.zryx.dao;
import org.springframework.stereotype.Repository;
import com.zryx.entity.Dict;

/**   
 * 连接数据数据查询数据
 字典DAO类 
 */
@Repository
public class DictDao extends BaseDao<Dict> implements IDictDao{}

	