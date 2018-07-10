package com.zryx.entity;

import java.util.Date;

/**   
课程管理实体类
 */
public class Course {
		//记录ID(PK)
		private Long id;
		//授课老师ID(FK)
		private Long teacherId;
		//课程名称
		private String name;
		//年度(2014,2015,2016)
		private Integer cyear;
		//学期(1-春季学期,2-秋季学期)
		private Integer schTerm;
		//学分
		private Float credit;
		//状态(1-正常,2-无效)
		private Integer state;
		//创建日期
		private Date  createDate;
		
		//临时变量。
		private String teacherName;
		
		
	
		public String getTeacherName() {
			return teacherName;
		}
		public void setTeacherName(String teacherName) {
			this.teacherName = teacherName;
		}
		public Long getId() {
			return id;
		}
		public void setId(Long id) {
			this.id = id;
		}
		public Long getTeacherId() {
			return teacherId;
		}
		public void setTeacherId(Long teacherId) {
			this.teacherId = teacherId;
		}
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public Integer getCyear() {
			return cyear;
		}
		public void setCyear(Integer cyear) {
			this.cyear = cyear;
		}
		public Integer getSchTerm() {
			return schTerm;
		}
		public void setSchTerm(Integer schTerm) {
			this.schTerm = schTerm;
		}
		public Float getCredit() {
			return credit;
		}
		public void setCredit(Float credit) {
			this.credit = credit;
		}
		public Integer getState() {
			return state;
		}
		public void setState(Integer state) {
			this.state = state;
		}
		public Date getCreateDate() {
			return createDate;
		}
		public void setCreateDate(Date createDate) {
			this.createDate = createDate;
		}
		@Override
		public String toString() {
			return "Course [id=" + id + ", teacherId=" + teacherId + ", name="
					+ name + ", cyear=" + cyear + ", schTerm=" + schTerm
					+ ", credit=" + credit + ", state=" + state
					+ ", createDate=" + createDate + ", teacherName="
					+ teacherName + "]";
		}
		
		
		
		
		
}
