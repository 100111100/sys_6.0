package com.zryx.dao;
import org.springframework.stereotype.Repository;
import com.zryx.entity.User;

/**   
 * 连接数据数据查询数据
 用户DAO类 
 */
@Repository
public class UserDao extends BaseDao<User> implements IUserDao{}

	

