package com.zryx.dao;
import org.springframework.stereotype.Repository;
import com.zryx.entity.Course;

/**   
 * 连接数据数据查询数据
课程DAO类 
 */
@Repository
public class CourseDao extends BaseDao<Course> implements ICourseDao{}

	

