package com.zryx.dao;
import org.springframework.stereotype.Repository;
import com.zryx.entity.Student;

/**   
 * 连接数据数据查询数据
 学生DAO类 
 */
@Repository
public class StudentDao extends BaseDao<Student> implements IStudentDao{}

	

