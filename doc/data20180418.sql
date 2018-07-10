-----------------------------------------------------
-- Export file for user U1726                      --
-- Created by Administrator on 2018/4/23, 16:43:07 --
-----------------------------------------------------

set define off
spool data.log

prompt
prompt Creating table T_CLASS
prompt ======================
prompt
create table U1726.T_CLASS
(
  id          NUMBER(10),
  name        VARCHAR2(20),
  charger     VARCHAR2(20),
  create_date DATE
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table U1726.T_CLASS
  is '班级信息表';
comment on column U1726.T_CLASS.id
  is '记录id';
comment on column U1726.T_CLASS.name
  is '班级名字';
comment on column U1726.T_CLASS.charger
  is '辅导员名字';
comment on column U1726.T_CLASS.create_date
  is '创建日期';

prompt
prompt Creating table T_COURSE
prompt =======================
prompt
create table U1726.T_COURSE
(
  id          NUMBER(10),
  name        VARCHAR2(10),
  create_date DATE,
  teacher_id  NUMBER(10),
  cyear       NUMBER(10),
  sch_term    NUMBER(10),
  credit      NUMBER(10,2),
  state       NUMBER(10)
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table U1726.T_COURSE
  is '课程信息表';
comment on column U1726.T_COURSE.id
  is '记录id';
comment on column U1726.T_COURSE.name
  is '课程名称';
comment on column U1726.T_COURSE.create_date
  is '创建日期';
comment on column U1726.T_COURSE.teacher_id
  is '授课老师id';
comment on column U1726.T_COURSE.cyear
  is '年度（2014，2015，2016）';
comment on column U1726.T_COURSE.sch_term
  is '学期（1-春季学期，2-秋季学期）';
comment on column U1726.T_COURSE.credit
  is '学分';
comment on column U1726.T_COURSE.state
  is '状态（1-正常，2-无效）';

prompt
prompt Creating table T_DICT
prompt =====================
prompt
create table U1726.T_DICT
(
  id          NUMBER(10),
  name        VARCHAR2(32),
  dkey        VARCHAR2(32),
  dval        VARCHAR2(32),
  use_flag    NUMBER(5),
  order_no    NUMBER(5),
  create_date DATE
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 8K
    minextents 1
    maxextents unlimited
  );
comment on table U1726.T_DICT
  is '字典表';
comment on column U1726.T_DICT.id
  is '记录id';
comment on column U1726.T_DICT.name
  is '名字';
comment on column U1726.T_DICT.dkey
  is '字典名称';
comment on column U1726.T_DICT.dval
  is '字典值';
comment on column U1726.T_DICT.use_flag
  is '状态（1-正常2-无效）';
comment on column U1726.T_DICT.order_no
  is '顺序号码';
comment on column U1726.T_DICT.create_date
  is '创建时间';

prompt
prompt Creating table T_INCOME_DATE
prompt ============================
prompt
create table U1726.T_INCOME_DATE
(
  id          NUMBER(10),
  income      NUMBER(10,2),
  create_date DATE
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table T_LOG
prompt ====================
prompt
create table U1726.T_LOG
(
  log         VARCHAR2(128),
  create_date DATE
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table U1726.T_LOG
  is '更改记录';

prompt
prompt Creating table T_MENU
prompt =====================
prompt
create table U1726.T_MENU
(
  id          NUMBER(10),
  name        VARCHAR2(32),
  url         VARCHAR2(32),
  pid         NUMBER(10),
  mlevel      NUMBER(10),
  order_no    NUMBER(10),
  create_date DATE
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table U1726.T_MENU
  is '菜单信息';
comment on column U1726.T_MENU.id
  is '记录id';
comment on column U1726.T_MENU.name
  is '名字';
comment on column U1726.T_MENU.url
  is '路径';
comment on column U1726.T_MENU.pid
  is '父菜单id';
comment on column U1726.T_MENU.mlevel
  is '级别（1-一级，2-二级-，3-权限）';
comment on column U1726.T_MENU.order_no
  is '排序号';
comment on column U1726.T_MENU.create_date
  is '创建时间';

prompt
prompt Creating table T_ROLE
prompt =====================
prompt
create table U1726.T_ROLE
(
  id          NUMBER(10) not null,
  name        VARCHAR2(32),
  create_date DATE
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table U1726.T_ROLE
  is '角色表';
comment on column U1726.T_ROLE.id
  is '记录id';
comment on column U1726.T_ROLE.name
  is '角色名字';
comment on column U1726.T_ROLE.create_date
  is '创建时间';

prompt
prompt Creating table T_ROLE2MENU
prompt ==========================
prompt
create table U1726.T_ROLE2MENU
(
  role_id NUMBER(10),
  menu_id NUMBER(10)
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 8K
    minextents 1
    maxextents unlimited
  );
comment on table U1726.T_ROLE2MENU
  is '角色与菜单的关系表';
comment on column U1726.T_ROLE2MENU.role_id
  is '角色id';
comment on column U1726.T_ROLE2MENU.menu_id
  is '菜单id';

prompt
prompt Creating table T_SCORE
prompt ======================
prompt
create table U1726.T_SCORE
(
  id         NUMBER(10),
  student_id NUMBER(10),
  study_year VARCHAR2(32),
  maths      NUMBER(8,2),
  english    NUMBER(8,2)
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table U1726.T_SCORE
  is '学生成绩表';
comment on column U1726.T_SCORE.id
  is '记录id';
comment on column U1726.T_SCORE.student_id
  is '学生id';
comment on column U1726.T_SCORE.study_year
  is '学年id';
comment on column U1726.T_SCORE.maths
  is '数学';
comment on column U1726.T_SCORE.english
  is '英语';

prompt
prompt Creating table T_STUDENT
prompt ========================
prompt
create table U1726.T_STUDENT
(
  id          NUMBER(10),
  name        VARCHAR2(32),
  sex         NUMBER(10),
  birthday    DATE,
  snative     VARCHAR2(32),
  class_id    NUMBER(5),
  create_date DATE
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table U1726.T_STUDENT
  is '学生信息表';
comment on column U1726.T_STUDENT.id
  is '记录id';
comment on column U1726.T_STUDENT.name
  is '名字';
comment on column U1726.T_STUDENT.sex
  is '性别1男2女';
comment on column U1726.T_STUDENT.birthday
  is '出生日期';
comment on column U1726.T_STUDENT.snative
  is '籍贯';
comment on column U1726.T_STUDENT.class_id
  is '班级id';
comment on column U1726.T_STUDENT.create_date
  is '创建时间';
create index U1726.IDX_TEXT01 on U1726.T_STUDENT (NAME)
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table T_STU_COURSE
prompt ===========================
prompt
create table U1726.T_STU_COURSE
(
  id          NUMBER(10),
  student_id  NUMBER(10),
  course_id   NUMBER(10),
  remark      VARCHAR2(32),
  create_date DATE
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table U1726.T_STU_COURSE
  is '学生选课表';
comment on column U1726.T_STU_COURSE.id
  is '记录id（pk）';
comment on column U1726.T_STU_COURSE.student_id
  is '学生ID(FK) ';
comment on column U1726.T_STU_COURSE.course_id
  is '课程ID(FK)  ';
comment on column U1726.T_STU_COURSE.remark
  is '备注       ';
comment on column U1726.T_STU_COURSE.create_date
  is '创建日期   ';

prompt
prompt Creating table T_TEACHER
prompt ========================
prompt
create table U1726.T_TEACHER
(
  id          NUMBER(10),
  name        VARCHAR2(32),
  sex         NUMBER(10),
  birthday    DATE,
  work_date   DATE,
  specialty   VARCHAR2(32),
  tlevel      NUMBER(10),
  create_date DATE
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table U1726.T_TEACHER
  is '教师信息表';
comment on column U1726.T_TEACHER.id
  is '记录ID(PK)                                ';
comment on column U1726.T_TEACHER.name
  is '姓名                                      ';
comment on column U1726.T_TEACHER.sex
  is '性别(1-男,2-女)                           ';
comment on column U1726.T_TEACHER.birthday
  is '出生日期                                  ';
comment on column U1726.T_TEACHER.work_date
  is '开始工作日期                              ';
comment on column U1726.T_TEACHER.specialty
  is '专业方向                                  ';
comment on column U1726.T_TEACHER.tlevel
  is '职称等级(1-初级,2-中级,3-高级)            ';
comment on column U1726.T_TEACHER.create_date
  is '创建日期                                  ';

prompt
prompt Creating table T_USER
prompt =====================
prompt
create table U1726.T_USER
(
  id          NUMBER(10) not null,
  name        VARCHAR2(32),
  birthday    DATE,
  sex         NUMBER(3),
  username    VARCHAR2(32),
  password    VARCHAR2(32),
  login_flag  NUMBER(3),
  role_id     NUMBER(10),
  file_path   VARCHAR2(32),
  create_date DATE
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    next 8K
    minextents 1
    maxextents unlimited
  );
comment on table U1726.T_USER
  is '用户表信息';
comment on column U1726.T_USER.id
  is 'id';
comment on column U1726.T_USER.name
  is '名字';
comment on column U1726.T_USER.birthday
  is '出生日期';
comment on column U1726.T_USER.sex
  is '性别1男2女';
comment on column U1726.T_USER.username
  is '用户名';
comment on column U1726.T_USER.password
  is '密码';
comment on column U1726.T_USER.login_flag
  is '登陆状态';
comment on column U1726.T_USER.role_id
  is '角色id';
comment on column U1726.T_USER.file_path
  is '文件路径';
comment on column U1726.T_USER.create_date
  is '创建时间';

prompt
prompt Creating sequence SEQ_CLASS
prompt ===========================
prompt
create sequence U1726.SEQ_CLASS
minvalue 100
maxvalue 1000000000
start with 120
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_COURSE
prompt ============================
prompt
create sequence U1726.SEQ_COURSE
minvalue 100
maxvalue 1000000000
start with 100
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_DICT
prompt ==========================
prompt
create sequence U1726.SEQ_DICT
minvalue 100
maxvalue 1000000000
start with 120
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_MENU
prompt ==========================
prompt
create sequence U1726.SEQ_MENU
minvalue 100
maxvalue 1000000000
start with 120
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_ROLE
prompt ==========================
prompt
create sequence U1726.SEQ_ROLE
minvalue 100
maxvalue 1000000000
start with 120
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_ROLE2MENU
prompt ===============================
prompt
create sequence U1726.SEQ_ROLE2MENU
minvalue 100
maxvalue 1000000000
start with 100
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_SCORE
prompt ===========================
prompt
create sequence U1726.SEQ_SCORE
minvalue 100
maxvalue 1000000000
start with 100
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_STUDENT
prompt =============================
prompt
create sequence U1726.SEQ_STUDENT
minvalue 100
maxvalue 1000000000
start with 120
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_STU_COURSE
prompt ================================
prompt
create sequence U1726.SEQ_STU_COURSE
minvalue 100
maxvalue 1000000000
start with 120
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_TEACHER
prompt =============================
prompt
create sequence U1726.SEQ_TEACHER
minvalue 100
maxvalue 1000000000
start with 120
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_USER
prompt ==========================
prompt
create sequence U1726.SEQ_USER
minvalue 100
maxvalue 1000000000
start with 120
increment by 1
cache 20;



prompt PL/SQL Developer import file
prompt Created on 2018年4月23日 by Administrator
set feedback off
set define off
prompt Creating T_CLASS...
create table T_CLASS
(
  id          NUMBER(10),
  name        VARCHAR2(20),
  charger     VARCHAR2(20),
  create_date DATE
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table T_CLASS
  is '班级信息表';
comment on column T_CLASS.id
  is '记录id';
comment on column T_CLASS.name
  is '班级名字';
comment on column T_CLASS.charger
  is '辅导员名字';
comment on column T_CLASS.create_date
  is '创建日期';

prompt Creating T_COURSE...
create table T_COURSE
(
  id          NUMBER(10),
  name        VARCHAR2(10),
  create_date DATE,
  teacher_id  NUMBER(10),
  cyear       NUMBER(10),
  sch_term    NUMBER(10),
  credit      NUMBER(10,2),
  state       NUMBER(10)
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table T_COURSE
  is '课程信息表';
comment on column T_COURSE.id
  is '记录id';
comment on column T_COURSE.name
  is '课程名称';
comment on column T_COURSE.create_date
  is '创建日期';
comment on column T_COURSE.teacher_id
  is '授课老师id';
comment on column T_COURSE.cyear
  is '年度（2014，2015，2016）';
comment on column T_COURSE.sch_term
  is '学期（1-春季学期，2-秋季学期）';
comment on column T_COURSE.credit
  is '学分';
comment on column T_COURSE.state
  is '状态（1-正常，2-无效）';

prompt Creating T_DICT...
create table T_DICT
(
  id          NUMBER(10),
  name        VARCHAR2(32),
  dkey        VARCHAR2(32),
  dval        VARCHAR2(32),
  use_flag    NUMBER(5),
  order_no    NUMBER(5),
  create_date DATE
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 8K
    minextents 1
    maxextents unlimited
  );
comment on table T_DICT
  is '字典表';
comment on column T_DICT.id
  is '记录id';
comment on column T_DICT.name
  is '名字';
comment on column T_DICT.dkey
  is '字典名称';
comment on column T_DICT.dval
  is '字典值';
comment on column T_DICT.use_flag
  is '状态（1-正常2-无效）';
comment on column T_DICT.order_no
  is '顺序号码';
comment on column T_DICT.create_date
  is '创建时间';

prompt Creating T_INCOME_DATE...
create table T_INCOME_DATE
(
  id          NUMBER(10),
  income      NUMBER(10,2),
  create_date DATE
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating T_LOG...
create table T_LOG
(
  log         VARCHAR2(128),
  create_date DATE
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table T_LOG
  is '更改记录';

prompt Creating T_MENU...
create table T_MENU
(
  id          NUMBER(10),
  name        VARCHAR2(32),
  url         VARCHAR2(32),
  pid         NUMBER(10),
  mlevel      NUMBER(10),
  order_no    NUMBER(10),
  create_date DATE
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table T_MENU
  is '菜单信息';
comment on column T_MENU.id
  is '记录id';
comment on column T_MENU.name
  is '名字';
comment on column T_MENU.url
  is '路径';
comment on column T_MENU.pid
  is '父菜单id';
comment on column T_MENU.mlevel
  is '级别（1-一级，2-二级-，3-权限）';
comment on column T_MENU.order_no
  is '排序号';
comment on column T_MENU.create_date
  is '创建时间';

prompt Creating T_ROLE...
create table T_ROLE
(
  id          NUMBER(10) not null,
  name        VARCHAR2(32),
  create_date DATE
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table T_ROLE
  is '角色表';
comment on column T_ROLE.id
  is '记录id';
comment on column T_ROLE.name
  is '角色名字';
comment on column T_ROLE.create_date
  is '创建时间';

prompt Creating T_ROLE2MENU...
create table T_ROLE2MENU
(
  role_id NUMBER(10),
  menu_id NUMBER(10)
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 8K
    minextents 1
    maxextents unlimited
  );
comment on table T_ROLE2MENU
  is '角色与菜单的关系表';
comment on column T_ROLE2MENU.role_id
  is '角色id';
comment on column T_ROLE2MENU.menu_id
  is '菜单id';

prompt Creating T_SCORE...
create table T_SCORE
(
  id         NUMBER(10),
  student_id NUMBER(10),
  study_year VARCHAR2(32),
  maths      NUMBER(8,2),
  english    NUMBER(8,2)
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table T_SCORE
  is '学生成绩表';
comment on column T_SCORE.id
  is '记录id';
comment on column T_SCORE.student_id
  is '学生id';
comment on column T_SCORE.study_year
  is '学年id';
comment on column T_SCORE.maths
  is '数学';
comment on column T_SCORE.english
  is '英语';

prompt Creating T_STUDENT...
create table T_STUDENT
(
  id          NUMBER(10),
  name        VARCHAR2(32),
  sex         NUMBER(10),
  birthday    DATE,
  snative     VARCHAR2(32),
  class_id    NUMBER(5),
  create_date DATE
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table T_STUDENT
  is '学生信息表';
comment on column T_STUDENT.id
  is '记录id';
comment on column T_STUDENT.name
  is '名字';
comment on column T_STUDENT.sex
  is '性别1男2女';
comment on column T_STUDENT.birthday
  is '出生日期';
comment on column T_STUDENT.snative
  is '籍贯';
comment on column T_STUDENT.class_id
  is '班级id';
comment on column T_STUDENT.create_date
  is '创建时间';
create index IDX_TEXT01 on T_STUDENT (NAME)
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating T_STU_COURSE...
create table T_STU_COURSE
(
  id          NUMBER(10),
  student_id  NUMBER(10),
  course_id   NUMBER(10),
  remark      VARCHAR2(32),
  create_date DATE
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table T_STU_COURSE
  is '学生选课表';
comment on column T_STU_COURSE.id
  is '记录id（pk）';
comment on column T_STU_COURSE.student_id
  is '学生ID(FK) ';
comment on column T_STU_COURSE.course_id
  is '课程ID(FK)  ';
comment on column T_STU_COURSE.remark
  is '备注       ';
comment on column T_STU_COURSE.create_date
  is '创建日期   ';

prompt Creating T_TEACHER...
create table T_TEACHER
(
  id          NUMBER(10),
  name        VARCHAR2(32),
  sex         NUMBER(10),
  birthday    DATE,
  work_date   DATE,
  specialty   VARCHAR2(32),
  tlevel      NUMBER(10),
  create_date DATE
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table T_TEACHER
  is '教师信息表';
comment on column T_TEACHER.id
  is '记录ID(PK)                                ';
comment on column T_TEACHER.name
  is '姓名                                      ';
comment on column T_TEACHER.sex
  is '性别(1-男,2-女)                           ';
comment on column T_TEACHER.birthday
  is '出生日期                                  ';
comment on column T_TEACHER.work_date
  is '开始工作日期                              ';
comment on column T_TEACHER.specialty
  is '专业方向                                  ';
comment on column T_TEACHER.tlevel
  is '职称等级(1-初级,2-中级,3-高级)            ';
comment on column T_TEACHER.create_date
  is '创建日期                                  ';

prompt Creating T_USER...
create table T_USER
(
  id          NUMBER(10) not null,
  name        VARCHAR2(32),
  birthday    DATE,
  sex         NUMBER(3),
  username    VARCHAR2(32),
  password    VARCHAR2(32),
  login_flag  NUMBER(3),
  role_id     NUMBER(10),
  file_path   VARCHAR2(32),
  create_date DATE
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    next 8K
    minextents 1
    maxextents unlimited
  );
comment on table T_USER
  is '用户表信息';
comment on column T_USER.id
  is 'id';
comment on column T_USER.name
  is '名字';
comment on column T_USER.birthday
  is '出生日期';
comment on column T_USER.sex
  is '性别1男2女';
comment on column T_USER.username
  is '用户名';
comment on column T_USER.password
  is '密码';
comment on column T_USER.login_flag
  is '登陆状态';
comment on column T_USER.role_id
  is '角色id';
comment on column T_USER.file_path
  is '文件路径';
comment on column T_USER.create_date
  is '创建时间';

prompt Disabling triggers for T_CLASS...
alter table T_CLASS disable all triggers;
prompt Disabling triggers for T_COURSE...
alter table T_COURSE disable all triggers;
prompt Disabling triggers for T_DICT...
alter table T_DICT disable all triggers;
prompt Disabling triggers for T_INCOME_DATE...
alter table T_INCOME_DATE disable all triggers;
prompt Disabling triggers for T_LOG...
alter table T_LOG disable all triggers;
prompt Disabling triggers for T_MENU...
alter table T_MENU disable all triggers;
prompt Disabling triggers for T_ROLE...
alter table T_ROLE disable all triggers;
prompt Disabling triggers for T_ROLE2MENU...
alter table T_ROLE2MENU disable all triggers;
prompt Disabling triggers for T_SCORE...
alter table T_SCORE disable all triggers;
prompt Disabling triggers for T_STUDENT...
alter table T_STUDENT disable all triggers;
prompt Disabling triggers for T_STU_COURSE...
alter table T_STU_COURSE disable all triggers;
prompt Disabling triggers for T_TEACHER...
alter table T_TEACHER disable all triggers;
prompt Disabling triggers for T_USER...
alter table T_USER disable all triggers;
prompt Deleting T_USER...
delete from T_USER;
commit;
prompt Deleting T_TEACHER...
delete from T_TEACHER;
commit;
prompt Deleting T_STU_COURSE...
delete from T_STU_COURSE;
commit;
prompt Deleting T_STUDENT...
delete from T_STUDENT;
commit;
prompt Deleting T_SCORE...
delete from T_SCORE;
commit;
prompt Deleting T_ROLE2MENU...
delete from T_ROLE2MENU;
commit;
prompt Deleting T_ROLE...
delete from T_ROLE;
commit;
prompt Deleting T_MENU...
delete from T_MENU;
commit;
prompt Deleting T_LOG...
delete from T_LOG;
commit;
prompt Deleting T_INCOME_DATE...
delete from T_INCOME_DATE;
commit;
prompt Deleting T_DICT...
delete from T_DICT;
commit;
prompt Deleting T_COURSE...
delete from T_COURSE;
commit;
prompt Deleting T_CLASS...
delete from T_CLASS;
commit;
prompt Loading T_CLASS...
insert into T_CLASS (id, name, charger, create_date)
values (1, '软件工程十班', '王雪情', to_date('01-07-2017', 'dd-mm-yyyy'));
insert into T_CLASS (id, name, charger, create_date)
values (2, '软件工程二班', '李小萍', to_date('01-07-2017', 'dd-mm-yyyy'));
insert into T_CLASS (id, name, charger, create_date)
values (3, '软件工程三班', '李小俐', to_date('01-07-2017', 'dd-mm-yyyy'));
insert into T_CLASS (id, name, charger, create_date)
values (4, '软件工程四班', '卢想', to_date('01-07-2017', 'dd-mm-yyyy'));
insert into T_CLASS (id, name, charger, create_date)
values (5, '软件工程五班', '王小丫', to_date('01-07-2017', 'dd-mm-yyyy'));
insert into T_CLASS (id, name, charger, create_date)
values (6, '软件工程六班', '周奇', to_date('01-07-2017', 'dd-mm-yyyy'));
insert into T_CLASS (id, name, charger, create_date)
values (7, '软件工程七班', '黄奇进', to_date('01-07-2017', 'dd-mm-yyyy'));
insert into T_CLASS (id, name, charger, create_date)
values (10, '1', '1', to_date('12-03-2018', 'dd-mm-yyyy'));
insert into T_CLASS (id, name, charger, create_date)
values (11, '软件工程八班', '网管', to_date('12-03-2018', 'dd-mm-yyyy'));
insert into T_CLASS (id, name, charger, create_date)
values (14, '软件工程十班', '智障猫咪', to_date('14-03-2018', 'dd-mm-yyyy'));
insert into T_CLASS (id, name, charger, create_date)
values (15, '建筑工程技术', '徐亚明', to_date('29-03-2018', 'dd-mm-yyyy'));
insert into T_CLASS (id, name, charger, create_date)
values (100, '建筑工程', '王雪情', to_date('16-03-1995', 'dd-mm-yyyy'));
insert into T_CLASS (id, name, charger, create_date)
values (101, '建筑工程', '王雪情A', to_date('16-03-1995', 'dd-mm-yyyy'));
insert into T_CLASS (id, name, charger, create_date)
values (109, '会计二班', '周恩来', to_date('21-04-2018 18:40:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into T_CLASS (id, name, charger, create_date)
values (110, '导弹灰机1', '傻逼1', to_date('21-04-2018 18:41:31', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 15 records loaded
prompt Loading T_COURSE...
insert into T_COURSE (id, name, create_date, teacher_id, cyear, sch_term, credit, state)
values (1, '数学', to_date('14-03-2018', 'dd-mm-yyyy'), 2, 1, 1, 1, 1);
insert into T_COURSE (id, name, create_date, teacher_id, cyear, sch_term, credit, state)
values (2, '语文', to_date('14-03-2018', 'dd-mm-yyyy'), 2, 2, 1, 1, 1);
insert into T_COURSE (id, name, create_date, teacher_id, cyear, sch_term, credit, state)
values (3, '英语', to_date('18-03-2018', 'dd-mm-yyyy'), 3, 3, 2, 1, 1);
insert into T_COURSE (id, name, create_date, teacher_id, cyear, sch_term, credit, state)
values (4, '地理', to_date('18-03-2018', 'dd-mm-yyyy'), 4, 2, 2, 1, 1);
insert into T_COURSE (id, name, create_date, teacher_id, cyear, sch_term, credit, state)
values (5, '历史', to_date('18-03-2018', 'dd-mm-yyyy'), 5, 4, 1, 1.5, 1);
insert into T_COURSE (id, name, create_date, teacher_id, cyear, sch_term, credit, state)
values (6, '政治', to_date('18-03-2018', 'dd-mm-yyyy'), 6, 1, 2, 1.5, 1);
insert into T_COURSE (id, name, create_date, teacher_id, cyear, sch_term, credit, state)
values (7, '物理', to_date('18-03-2018', 'dd-mm-yyyy'), 7, 2, 1, 1, 1);
insert into T_COURSE (id, name, create_date, teacher_id, cyear, sch_term, credit, state)
values (8, '生物2', to_date('18-03-2018', 'dd-mm-yyyy'), 2, 3, 1, 1.5, 2);
insert into T_COURSE (id, name, create_date, teacher_id, cyear, sch_term, credit, state)
values (9, '化学', to_date('18-03-2018', 'dd-mm-yyyy'), 9, 3, 1, 1, 1);
insert into T_COURSE (id, name, create_date, teacher_id, cyear, sch_term, credit, state)
values (10, '建筑', to_date('18-03-2018', 'dd-mm-yyyy'), 1, 4, 2, 1, 1);
insert into T_COURSE (id, name, create_date, teacher_id, cyear, sch_term, credit, state)
values (null, 'fds', to_date('21-04-2018 22:08:26', 'dd-mm-yyyy hh24:mi:ss'), 100, 1, 1, 1, 1);
commit;
prompt 11 records loaded
prompt Loading T_DICT...
insert into T_DICT (id, name, dkey, dval, use_flag, order_no, create_date)
values (1, 'SYS_SEX', '1', '男', 1, 1, to_date('08-03-2018', 'dd-mm-yyyy'));
insert into T_DICT (id, name, dkey, dval, use_flag, order_no, create_date)
values (2, 'SYS_SEX', '2', '女', 1, 4, to_date('08-03-2018', 'dd-mm-yyyy'));
insert into T_DICT (id, name, dkey, dval, use_flag, order_no, create_date)
values (4, 'SYS_STATE', '1', '正常', 1, 1, to_date('09-03-2018', 'dd-mm-yyyy'));
insert into T_DICT (id, name, dkey, dval, use_flag, order_no, create_date)
values (5, 'SYS_STATE', '2', '无效', 1, 2, to_date('09-03-2018', 'dd-mm-yyyy'));
insert into T_DICT (id, name, dkey, dval, use_flag, order_no, create_date)
values (7, 'MENU_LEVEL', '1', '一级', 1, 3, to_date('21-03-2018', 'dd-mm-yyyy'));
insert into T_DICT (id, name, dkey, dval, use_flag, order_no, create_date)
values (8, 'MENU_LEVEL', '2', '二级', 1, 3, to_date('22-03-2018', 'dd-mm-yyyy'));
insert into T_DICT (id, name, dkey, dval, use_flag, order_no, create_date)
values (9, 'TEACHER_GRADE', '1', '一级', 1, 1, to_date('14-03-2018', 'dd-mm-yyyy'));
insert into T_DICT (id, name, dkey, dval, use_flag, order_no, create_date)
values (10, 'TEACHER_GRADE', '2', '二级', 1, 2, to_date('30-03-2018', 'dd-mm-yyyy'));
insert into T_DICT (id, name, dkey, dval, use_flag, order_no, create_date)
values (11, 'TEACHER_GRADE', '3', '三级', 1, 2, to_date('19-03-2018', 'dd-mm-yyyy'));
insert into T_DICT (id, name, dkey, dval, use_flag, order_no, create_date)
values (12, 'TEACHER_GRADE', '4', '四级', 1, 2, to_date('22-03-2018', 'dd-mm-yyyy'));
insert into T_DICT (id, name, dkey, dval, use_flag, order_no, create_date)
values (13, 'MENU_LEVEL', '3', '功能权限', 1, 1, to_date('22-03-2018', 'dd-mm-yyyy'));
insert into T_DICT (id, name, dkey, dval, use_flag, order_no, create_date)
values (14, 'CYEAR', '1', '第一学年', 1, 1, to_date('29-03-2018', 'dd-mm-yyyy'));
insert into T_DICT (id, name, dkey, dval, use_flag, order_no, create_date)
values (15, 'CYEAR', '2', '第二学年', 1, 1, to_date('20-03-2018', 'dd-mm-yyyy'));
insert into T_DICT (id, name, dkey, dval, use_flag, order_no, create_date)
values (16, 'CYEAR', '3', '第三学年', 1, 1, to_date('28-03-2018', 'dd-mm-yyyy'));
insert into T_DICT (id, name, dkey, dval, use_flag, order_no, create_date)
values (17, 'CYEAR', '4', '第四学年', 1, 1, to_date('28-03-2018', 'dd-mm-yyyy'));
insert into T_DICT (id, name, dkey, dval, use_flag, order_no, create_date)
values (18, 'SCH_TERM', '1', '春季', 1, 1, to_date('28-03-2018', 'dd-mm-yyyy'));
insert into T_DICT (id, name, dkey, dval, use_flag, order_no, create_date)
values (19, 'SCH_TERM', '2', '秋季', 1, 1, to_date('20-03-2018', 'dd-mm-yyyy'));
insert into T_DICT (id, name, dkey, dval, use_flag, order_no, create_date)
values (108, '5', '5', '5', 1, 5, to_date('20-04-2018 11:04:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into T_DICT (id, name, dkey, dval, use_flag, order_no, create_date)
values (107, '12', '12', '12', 1, 12, to_date('20-04-2018 10:11:17', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 19 records loaded
prompt Loading T_INCOME_DATE...
insert into T_INCOME_DATE (id, income, create_date)
values (20180101, 3.8, to_date('01-01-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180102, 7.6, to_date('02-01-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180103, 11.4, to_date('03-01-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180104, 15.2, to_date('04-01-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180105, 19, to_date('05-01-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180106, 22.8, to_date('06-01-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180107, 26.6, to_date('07-01-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180108, 30.4, to_date('08-01-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180109, 34.2, to_date('09-01-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180110, 38, to_date('10-01-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180111, 41.8, to_date('11-01-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180112, 45.6, to_date('12-01-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180113, 49.4, to_date('13-01-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180114, 53.2, to_date('14-01-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180115, 57, to_date('15-01-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180116, 60.8, to_date('16-01-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180117, 64.6, to_date('17-01-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180118, 68.4, to_date('18-01-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180119, 72.2, to_date('19-01-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180120, 76, to_date('20-01-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180121, 79.8, to_date('21-01-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180122, 83.6, to_date('22-01-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180123, 87.4, to_date('23-01-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180124, 91.2, to_date('24-01-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180125, 95, to_date('25-01-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180126, 98.8, to_date('26-01-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180127, 103, to_date('27-01-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180128, 106, to_date('28-01-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180129, 110, to_date('29-01-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180130, 114, to_date('30-01-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180131, 118, to_date('31-01-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180201, 7.6, to_date('01-02-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180202, 15.2, to_date('02-02-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180203, 22.8, to_date('03-02-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180204, 30.4, to_date('04-02-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180205, 38, to_date('05-02-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180206, 45.6, to_date('06-02-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180207, 53.2, to_date('07-02-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180208, 60.8, to_date('08-02-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180209, 68.4, to_date('09-02-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180210, 76, to_date('10-02-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180211, 83.6, to_date('11-02-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180212, 91.2, to_date('12-02-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180213, 98.8, to_date('13-02-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180214, 106, to_date('14-02-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180215, 114, to_date('15-02-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180216, 122, to_date('16-02-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180217, 129, to_date('17-02-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180218, 137, to_date('18-02-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180219, 144, to_date('19-02-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180220, 152, to_date('20-02-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180221, 160, to_date('21-02-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180222, 167, to_date('22-02-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180223, 175, to_date('23-02-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180224, 182, to_date('24-02-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180225, 190, to_date('25-02-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180226, 198, to_date('26-02-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180227, 205, to_date('27-02-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180228, 213, to_date('28-02-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180301, 11.4, to_date('01-03-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180302, 22.8, to_date('02-03-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180303, 34.2, to_date('03-03-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180304, 45.6, to_date('04-03-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180305, 57, to_date('05-03-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180306, 68.4, to_date('06-03-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180307, 79.8, to_date('07-03-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180308, 91.2, to_date('08-03-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180309, 103, to_date('09-03-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180310, 114, to_date('10-03-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180311, 125, to_date('11-03-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180312, 137, to_date('12-03-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180313, 148, to_date('13-03-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180314, 160, to_date('14-03-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180315, 171, to_date('15-03-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180316, 182, to_date('16-03-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180317, 194, to_date('17-03-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180318, 205, to_date('18-03-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180319, 217, to_date('19-03-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180320, 228, to_date('20-03-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180321, 239, to_date('21-03-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180322, 251, to_date('22-03-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180323, 262, to_date('23-03-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180324, 274, to_date('24-03-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180325, 285, to_date('25-03-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180326, 296, to_date('26-03-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180327, 308, to_date('27-03-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180328, 319, to_date('28-03-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180329, 331, to_date('29-03-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180330, 342, to_date('30-03-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180331, 353, to_date('31-03-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180401, 15.2, to_date('01-04-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180402, 30.4, to_date('02-04-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180403, 45.6, to_date('03-04-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180404, 60.8, to_date('04-04-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180405, 76, to_date('05-04-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180406, 91.2, to_date('06-04-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180407, 106, to_date('07-04-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180408, 122, to_date('08-04-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180409, 137, to_date('09-04-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180410, 152, to_date('10-04-2018', 'dd-mm-yyyy'));
commit;
prompt 100 records committed...
insert into T_INCOME_DATE (id, income, create_date)
values (20180411, 167, to_date('11-04-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180412, 182, to_date('12-04-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180413, 198, to_date('13-04-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180414, 213, to_date('14-04-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180415, 228, to_date('15-04-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180416, 243, to_date('16-04-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180417, 258, to_date('17-04-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180418, 274, to_date('18-04-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180419, 289, to_date('19-04-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180420, 304, to_date('20-04-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180421, 319, to_date('21-04-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180422, 334, to_date('22-04-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180423, 350, to_date('23-04-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180424, 365, to_date('24-04-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180425, 380, to_date('25-04-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180426, 395, to_date('26-04-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180427, 410, to_date('27-04-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180428, 426, to_date('28-04-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180429, 441, to_date('29-04-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180430, 456, to_date('30-04-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180501, 19, to_date('01-05-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180502, 38, to_date('02-05-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180503, 57, to_date('03-05-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180504, 76, to_date('04-05-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180505, 95, to_date('05-05-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180506, 114, to_date('06-05-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180507, 133, to_date('07-05-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180508, 152, to_date('08-05-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180509, 171, to_date('09-05-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180510, 190, to_date('10-05-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180511, 209, to_date('11-05-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180512, 228, to_date('12-05-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180513, 247, to_date('13-05-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180514, 266, to_date('14-05-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180515, 285, to_date('15-05-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180516, 304, to_date('16-05-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180517, 323, to_date('17-05-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180518, 342, to_date('18-05-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180519, 361, to_date('19-05-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180520, 380, to_date('20-05-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180521, 399, to_date('21-05-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180522, 418, to_date('22-05-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180523, 437, to_date('23-05-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180524, 456, to_date('24-05-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180525, 475, to_date('25-05-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180526, 494, to_date('26-05-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180527, 513, to_date('27-05-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180528, 532, to_date('28-05-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180529, 551, to_date('29-05-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180530, 570, to_date('30-05-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180531, 589, to_date('31-05-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180601, 22.8, to_date('01-06-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180602, 45.6, to_date('02-06-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180603, 68.4, to_date('03-06-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180604, 91.2, to_date('04-06-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180605, 114, to_date('05-06-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180606, 137, to_date('06-06-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180607, 160, to_date('07-06-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180608, 182, to_date('08-06-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180609, 205, to_date('09-06-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180610, 228, to_date('10-06-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180611, 251, to_date('11-06-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180612, 274, to_date('12-06-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180613, 296, to_date('13-06-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180614, 319, to_date('14-06-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180615, 342, to_date('15-06-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180616, 365, to_date('16-06-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180617, 388, to_date('17-06-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180618, 410, to_date('18-06-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180619, 433, to_date('19-06-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180620, 456, to_date('20-06-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180621, 479, to_date('21-06-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180622, 502, to_date('22-06-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180623, 524, to_date('23-06-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180624, 547, to_date('24-06-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180625, 570, to_date('25-06-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180626, 593, to_date('26-06-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180627, 616, to_date('27-06-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180628, 638, to_date('28-06-2018', 'dd-mm-yyyy'));
insert into T_INCOME_DATE (id, income, create_date)
values (20180629, 661, to_date('29-06-2018', 'dd-mm-yyyy'));
commit;
prompt 180 records loaded
prompt Loading T_LOG...
insert into T_LOG (log, create_date)
values ('数据库表被修改了ST_INFO  TABLE', to_date('13-04-2018 12:04:25', 'dd-mm-yyyy hh24:mi:ss'));
insert into T_LOG (log, create_date)
values ('数据库表被修改了PROC_TEXT03  PROCEDURE', to_date('14-04-2018 10:43:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into T_LOG (log, create_date)
values ('数据库表被修改了PROC_TEXT03  PROCEDURE', to_date('14-04-2018 10:43:52', 'dd-mm-yyyy hh24:mi:ss'));
insert into T_LOG (log, create_date)
values ('proc_text03', to_date('14-04-2018 10:44:03', 'dd-mm-yyyy hh24:mi:ss'));
insert into T_LOG (log, create_date)
values ('数据库表被修改了T_STU_COURSE  TABLE', to_date('14-04-2018 19:10:29', 'dd-mm-yyyy hh24:mi:ss'));
insert into T_LOG (log, create_date)
values ('数据库表被修改了SEQ_STU_COURSE  SEQUENCE', to_date('14-04-2018 19:13:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into T_LOG (log, create_date)
values ('数据库表被修改了T_ROLE2MENU  TABLE', to_date('14-04-2018 19:40:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into T_LOG (log, create_date)
values ('数据库表被修改了T_ROLE2MENU  TABLE', to_date('14-04-2018 19:40:53', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 8 records loaded
prompt Loading T_MENU...
insert into T_MENU (id, name, url, pid, mlevel, order_no, create_date)
values (1, '系统管理', 'url', 0, 1, 1, to_date('14-03-2018', 'dd-mm-yyyy'));
insert into T_MENU (id, name, url, pid, mlevel, order_no, create_date)
values (2, '基础数据', 'url', 0, 1, 2, to_date('21-03-2018', 'dd-mm-yyyy'));
insert into T_MENU (id, name, url, pid, mlevel, order_no, create_date)
values (3, '字典管理', 'dict_list.do', 1, 2, 1, to_date('16-03-2018', 'dd-mm-yyyy'));
insert into T_MENU (id, name, url, pid, mlevel, order_no, create_date)
values (4, '菜单管理', 'menu_list.do', 1, 2, 5, to_date('16-03-2018', 'dd-mm-yyyy'));
insert into T_MENU (id, name, url, pid, mlevel, order_no, create_date)
values (5, '角色管理', 'role_list.do', 1, 2, 10, to_date('16-03-2018', 'dd-mm-yyyy'));
insert into T_MENU (id, name, url, pid, mlevel, order_no, create_date)
values (6, '用户管理', 'user_list.do', 1, 2, 1, to_date('16-03-2018', 'dd-mm-yyyy'));
insert into T_MENU (id, name, url, pid, mlevel, order_no, create_date)
values (7, '教学管理', 'URL', 0, 1, 2, to_date('16-03-2018', 'dd-mm-yyyy'));
insert into T_MENU (id, name, url, pid, mlevel, order_no, create_date)
values (8, '班级管理', 'tclass_list.do', 2, 2, 2, to_date('16-03-2018', 'dd-mm-yyyy'));
insert into T_MENU (id, name, url, pid, mlevel, order_no, create_date)
values (9, '学生管理', 'student_list.do', 2, 2, 1, to_date('16-03-2018', 'dd-mm-yyyy'));
insert into T_MENU (id, name, url, pid, mlevel, order_no, create_date)
values (10, '课程管理', 'course_list.do', 2, 2, 2, to_date('16-03-2018', 'dd-mm-yyyy'));
insert into T_MENU (id, name, url, pid, mlevel, order_no, create_date)
values (11, '选课管理', 'stuCourse_list.do', 7, 2, 1, to_date('16-03-2018', 'dd-mm-yyyy'));
insert into T_MENU (id, name, url, pid, mlevel, order_no, create_date)
values (12, '成绩管理', 'url', 7, 2, 2, to_date('16-03-2018', 'dd-mm-yyyy'));
insert into T_MENU (id, name, url, pid, mlevel, order_no, create_date)
values (13, '用户新增', 'user_add', 6, 3, 1, to_date('16-03-2018', 'dd-mm-yyyy'));
insert into T_MENU (id, name, url, pid, mlevel, order_no, create_date)
values (22, '用户删除', 'user_delete.do', 6, 3, 1, to_date('22-03-2018', 'dd-mm-yyyy'));
insert into T_MENU (id, name, url, pid, mlevel, order_no, create_date)
values (23, '教师管理', 'teacher_list.do', 7, 2, null, null);
commit;
prompt 15 records loaded
prompt Loading T_ROLE...
insert into T_ROLE (id, name, create_date)
values (1, '管理员', to_date('22-03-2018', 'dd-mm-yyyy'));
insert into T_ROLE (id, name, create_date)
values (2, '教师角色', to_date('30-03-2018', 'dd-mm-yyyy'));
insert into T_ROLE (id, name, create_date)
values (3, '学生角色', to_date('21-03-2018', 'dd-mm-yyyy'));
insert into T_ROLE (id, name, create_date)
values (9, '智障', to_date('21-03-2018', 'dd-mm-yyyy'));
insert into T_ROLE (id, name, create_date)
values (10, '神经', to_date('21-03-2018', 'dd-mm-yyyy'));
insert into T_ROLE (id, name, create_date)
values (100, 'fff得到55', to_date('20-04-2018 20:52:52', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 6 records loaded
prompt Loading T_ROLE2MENU...
insert into T_ROLE2MENU (role_id, menu_id)
values (1, 1);
insert into T_ROLE2MENU (role_id, menu_id)
values (1, 2);
insert into T_ROLE2MENU (role_id, menu_id)
values (1, 3);
insert into T_ROLE2MENU (role_id, menu_id)
values (1, 4);
insert into T_ROLE2MENU (role_id, menu_id)
values (1, 5);
insert into T_ROLE2MENU (role_id, menu_id)
values (1, 6);
insert into T_ROLE2MENU (role_id, menu_id)
values (1, 7);
insert into T_ROLE2MENU (role_id, menu_id)
values (1, 8);
insert into T_ROLE2MENU (role_id, menu_id)
values (1, 9);
insert into T_ROLE2MENU (role_id, menu_id)
values (1, 10);
insert into T_ROLE2MENU (role_id, menu_id)
values (1, 11);
insert into T_ROLE2MENU (role_id, menu_id)
values (1, 13);
insert into T_ROLE2MENU (role_id, menu_id)
values (1, 14);
insert into T_ROLE2MENU (role_id, menu_id)
values (1, 15);
insert into T_ROLE2MENU (role_id, menu_id)
values (1, 16);
insert into T_ROLE2MENU (role_id, menu_id)
values (1, 17);
insert into T_ROLE2MENU (role_id, menu_id)
values (1, 23);
commit;
prompt 17 records loaded
prompt Loading T_SCORE...
insert into T_SCORE (id, student_id, study_year, maths, english)
values (1, 1, '2014-春季', 89.5, 200.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (2, 1, '2015-春季', 80.5, 190.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (3, 2, '2015-春季', 114.5, 189.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (4, 3, '2015-春季', 123.5, 79.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (5, 4, '2014-春季', 119.5, 69.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (6, 5, '2014-春季', 94.5, 80.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (7, 6, '2014-春季', 94.5, 200.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (8, 7, '2014-春季', 94.5, 156.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (9, 8, '2014-春季', 94.5, 200.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (10, 9, '2014-春季', 94.5, 200.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (11, 10, '2014-春季', 114.5, 189.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (12, 11, '2014-春季', 114.5, 69.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (13, 12, '2014-春季', 94.5, 47.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (14, 13, '2014-春季', 84.5, 80.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (15, 14, '2014-春季', 114.5, 189.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (16, 1, '2014-秋季', 109.5, 189.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (17, 2, '2014-秋季', 94.5, 200.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (18, 3, '2014-秋季', 94.5, 79.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (19, 4, '2014-秋季', 119.5, 58.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (20, 5, '2014-秋季', 94.5, 80.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (21, 6, '2014-秋季', 94.5, 200.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (22, 7, '2014-秋季', 104.5, 200.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (23, 8, '2014-秋季', 94.5, 180.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (24, 9, '2014-秋季', 94.5, 200.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (25, 10, '2014-秋季', 114.5, 189.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (26, 11, '2014-秋季', 114.5, 69.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (27, 12, '2014-秋季', 94.5, 69.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (28, 13, '2014-秋季', 84.5, 50.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (29, 14, '2014-秋季', 114.5, 189.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (30, 1, '2015-春季', 89.5, 189.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (31, 2, '2015-春季', 94.5, 200.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (32, 3, '2015-春季', 114.5, 79.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (33, 4, '2015-春季', 93.5, 80.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (34, 5, '2015-春季', 87.5, 80.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (35, 6, '2015-春季', 114.5, 189.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (36, 7, '2015-春季', 94.5, 189.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (37, 8, '2015-春季', 108.5, 199.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (38, 9, '2015-春季', 94.5, 200.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (39, 10, '2015-春季', 94.5, 200.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (40, 11, '2015-春季', 94.5, 80.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (41, 12, '2015-春季', 94.5, 80.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (42, 13, '2015-春季', 84.5, 80.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (43, 14, '2015-春季', 114.5, 189.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (44, 1, '2014-秋季', 109.5, 189.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (45, 2, '2014-秋季', 94.5, 189.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (46, 3, '2014-秋季', 94.5, 90.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (47, 4, '2014-秋季', 119.5, 69.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (48, 5, '2014-秋季', 114.5, 69.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (49, 6, '2014-秋季', 94.5, 200.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (50, 7, '2014-秋季', 94.5, 189.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (51, 8, '2014-秋季', 114.5, 189.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (52, 9, '2014-秋季', 94.5, 200.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (53, 10, '2014-秋季', 94.5, 200.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (54, 11, '2014-秋季', 94.5, 80.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (55, 12, '2014-秋季', 94.5, 80.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (56, 13, '2014-秋季', 84.5, 80.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (57, 14, '2014-秋季', 114.5, 189.5);
commit;
prompt 57 records loaded
prompt Loading T_STUDENT...
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (1, '谢美玲1', 2, to_date('01-01-1999', 'dd-mm-yyyy'), null, 3, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (2, '谢芳2', 2, to_date('01-01-1999', 'dd-mm-yyyy'), '广西百色', 3, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (3, '55555555555', 1, to_date('08-12-1994', 'dd-mm-yyyy'), '广西百色1', 4, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (4, '何金健4', 1, to_date('14-02-1984', 'dd-mm-yyyy'), '广西百色', 2, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (5, '何康5', 1, to_date('08-12-1990', 'dd-mm-yyyy'), '广西桂林', 2, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (6, '卢欢6', 2, to_date('14-03-1992', 'dd-mm-yyyy'), '广西百色', 10, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (7, '韦小芳7', 2, to_date('14-05-1993', 'dd-mm-yyyy'), '广西百色', 3, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (8, '王小利8', 2, to_date('12-02-1995', 'dd-mm-yyyy'), '广西钦州', 4, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (9, '谢婷9', 2, to_date('04-12-1995', 'dd-mm-yyyy'), '广西南宁', 5, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (102, '二维', 1, to_date('05-04-2018', 'dd-mm-yyyy'), '越南', 1, to_date('14-04-2018 20:38:02', 'dd-mm-yyyy hh24:mi:ss'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (11, '王鑫', 1, to_date('14-02-1994', 'dd-mm-yyyy'), '广西百色', 5, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (12, '何霖', 1, to_date('20-03-1995', 'dd-mm-yyyy'), '广西桂林', 2, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (13, '卢铮', 1, to_date('14-03-1992', 'dd-mm-yyyy'), '广西百色', 1, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (14, '王芳', 2, to_date('14-05-1993', 'dd-mm-yyyy'), '广西百色', 3, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (15, '周比利', 1, to_date('12-02-1995', 'dd-mm-yyyy'), '广西钦州', 4, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (16, '谢胜', 1, to_date('04-12-1995', 'dd-mm-yyyy'), '广西南宁', 5, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (17, '周小玲', 2, to_date('14-12-1994', 'dd-mm-yyyy'), '广西百色', 1, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (19, '黄康', 1, to_date('08-12-1990', 'dd-mm-yyyy'), '广西桂林', 2, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (20, '李欢', 2, to_date('14-03-1992', 'dd-mm-yyyy'), '广西百色', 1, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (21, '杨小芳', 2, to_date('14-05-1993', 'dd-mm-yyyy'), '广西百色', 3, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (22, '杨小利', 2, to_date('12-02-1995', 'dd-mm-yyyy'), '广西钦州', 4, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (23, '李婷', 2, to_date('04-12-1995', 'dd-mm-yyyy'), '广西南宁', 5, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (24, '王玲', 2, to_date('14-12-1994', 'dd-mm-yyyy'), '广西百色', 1, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (25, '周鑫', 1, to_date('14-02-1994', 'dd-mm-yyyy'), '广西百色', 5, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (26, '卢霖', 1, to_date('08-12-1990', 'dd-mm-yyyy'), '广西桂林', 2, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (27, '王铮', 1, to_date('14-03-1992', 'dd-mm-yyyy'), '广西百色', 1, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (28, '谢芳', 2, to_date('14-05-1993', 'dd-mm-yyyy'), '广西百色', 3, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (29, '王大利', 1, to_date('12-02-1995', 'dd-mm-yyyy'), '广西钦州', 4, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (30, '谢庐', 1, to_date('04-12-1995', 'dd-mm-yyyy'), '广西南宁', 5, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (31, '测试用户1', 2, to_date('25-01-1994', 'dd-mm-yyyy'), '广西百色', 5, to_date('03-01-2017', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (32, '1', 1, to_date('25-07-2017', 'dd-mm-yyyy'), '1', 3, to_date('20-07-2017', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (33, '谢美玲', 2, to_date('14-12-2016', 'dd-mm-yyyy'), '广西百色', 3, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (34, '谢芳', 2, to_date('14-05-1993', 'dd-mm-yyyy'), '广西百色', 3, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (35, '何小玲', 1, to_date('08-12-1994', 'dd-mm-yyyy'), '广西百色1', 4, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (36, '何金健', 1, to_date('14-02-1984', 'dd-mm-yyyy'), '广西百色', 1, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (37, '何康', 1, to_date('08-12-1990', 'dd-mm-yyyy'), '广西桂林', 2, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (38, '卢欢', 2, to_date('14-03-1992', 'dd-mm-yyyy'), '广西百色', 1, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (39, '韦小芳', 2, to_date('14-05-1993', 'dd-mm-yyyy'), '广西百色', 3, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (40, '王小利', 2, to_date('12-02-1995', 'dd-mm-yyyy'), '广西钦州', 4, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (41, '谢婷', 2, to_date('04-12-1995', 'dd-mm-yyyy'), '广西南宁', 5, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (42, '何玲', 2, to_date('14-12-1994', 'dd-mm-yyyy'), '广西百色', 1, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (43, '王鑫', 1, to_date('14-02-1994', 'dd-mm-yyyy'), '广西百色', 5, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (44, '何霖', 1, to_date('08-12-1990', 'dd-mm-yyyy'), '广西桂林', 2, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (46, '王芳', 2, to_date('14-05-1993', 'dd-mm-yyyy'), '广西百色', 3, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (47, '周比利', 1, to_date('12-02-1995', 'dd-mm-yyyy'), '广西钦州', 4, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (48, '谢胜', 1, to_date('04-12-1995', 'dd-mm-yyyy'), '广西南宁', 5, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (107, '天天', 1, to_date('25-04-2018', 'dd-mm-yyyy'), '北京', 3, to_date('21-04-2018 16:51:34', 'dd-mm-yyyy hh24:mi:ss'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (50, '周金健2', 2, to_date('14-02-1994', 'dd-mm-yyyy'), '北京东城', 3, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (51, '黄康', 1, to_date('08-12-1990', 'dd-mm-yyyy'), '广西桂林', 2, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (52, '李欢1', 1, to_date('14-03-1992', 'dd-mm-yyyy'), '广西百色1', 5, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (53, '杨小芳', 2, to_date('14-05-1993', 'dd-mm-yyyy'), '广西百色', 3, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (54, '杨小利', 2, to_date('12-02-1995', 'dd-mm-yyyy'), '广西钦州', 4, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (55, '李婷', 2, to_date('04-12-1995', 'dd-mm-yyyy'), '广西南宁', 5, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (56, '王玲', 2, to_date('14-12-1994', 'dd-mm-yyyy'), '广西百色', 1, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (57, '周鑫', 1, to_date('14-02-1994', 'dd-mm-yyyy'), '广西百色', 5, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (58, '卢霖', 1, to_date('08-12-1990', 'dd-mm-yyyy'), '广西桂林', 2, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (59, '王铮', 1, to_date('14-03-1992', 'dd-mm-yyyy'), '广西百色', 1, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (60, '谢芳', 2, to_date('14-05-1993', 'dd-mm-yyyy'), '广西百色', 3, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (61, '王大利', 1, to_date('12-02-1995', 'dd-mm-yyyy'), '广西钦州', 4, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (62, '谢庐', 1, to_date('04-12-1995', 'dd-mm-yyyy'), '广西南宁', 5, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (63, '智障一样的猫咪', 1, to_date('21-03-2018', 'dd-mm-yyyy'), '广西北海', 2, to_date('15-03-2018', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (64, '111111111111111', 1, to_date('22-03-2018', 'dd-mm-yyyy'), '11111111111111', 2, to_date('15-03-2018', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (65, 'dddddddddddd', 1, to_date('23-03-2018', 'dd-mm-yyyy'), '55555555555', null, to_date('15-03-2018', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (101, '二维', 1, to_date('05-04-2018', 'dd-mm-yyyy'), '越南', 1, to_date('14-04-2018 20:38:02', 'dd-mm-yyyy hh24:mi:ss'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (103, '指挥者', 1, to_date('20-04-2018', 'dd-mm-yyyy'), '倒萨发', 1, to_date('14-04-2018 20:40:27', 'dd-mm-yyyy hh24:mi:ss'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (104, '阿范德萨', 1, to_date('19-04-2018', 'dd-mm-yyyy'), '阿道夫', 4, to_date('14-04-2018 20:42:35', 'dd-mm-yyyy hh24:mi:ss'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (105, '阿斯蒂芬', 1, to_date('18-04-2018', 'dd-mm-yyyy'), '爱的说法', 6, to_date('14-04-2018 20:44:07', 'dd-mm-yyyy hh24:mi:ss'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (106, 'new', 1, to_date('26-04-2018', 'dd-mm-yyyy'), '北京东城', 3, to_date('21-04-2018 16:42:43', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 68 records loaded
prompt Loading T_STU_COURSE...
insert into T_STU_COURSE (id, student_id, course_id, remark, create_date)
values (1, 1, 2, '周末上课', to_date('29-03-2018', 'dd-mm-yyyy'));
insert into T_STU_COURSE (id, student_id, course_id, remark, create_date)
values (3, 13, 1, '空间内部空间', to_date('19-03-2018', 'dd-mm-yyyy'));
insert into T_STU_COURSE (id, student_id, course_id, remark, create_date)
values (4, 13, 1, '范德萨', to_date('19-03-2018', 'dd-mm-yyyy'));
insert into T_STU_COURSE (id, student_id, course_id, remark, create_date)
values (2, 17, 10, '傻逼啊', to_date('22-04-2018 09:56:34', 'dd-mm-yyyy hh24:mi:ss'));
insert into T_STU_COURSE (id, student_id, course_id, remark, create_date)
values (5, 20, 1, '擦擦擦', to_date('22-04-2018 09:57:37', 'dd-mm-yyyy hh24:mi:ss'));
insert into T_STU_COURSE (id, student_id, course_id, remark, create_date)
values (100, 20, 10, '暗示法第三方', to_date('22-04-2018 10:06:02', 'dd-mm-yyyy hh24:mi:ss'));
insert into T_STU_COURSE (id, student_id, course_id, remark, create_date)
values (101, 1, 10, '倒萨飞达', to_date('22-04-2018 16:15:50', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 7 records loaded
prompt Loading T_TEACHER...
insert into T_TEACHER (id, name, sex, birthday, work_date, specialty, tlevel, create_date)
values (1, '李白', 2, to_date('14-03-2018', 'dd-mm-yyyy'), to_date('16-03-2015', 'dd-mm-yyyy'), 'java攻城狮吾问无为谓', 3, to_date('14-03-2018', 'dd-mm-yyyy'));
insert into T_TEACHER (id, name, sex, birthday, work_date, specialty, tlevel, create_date)
values (100, '撒旦', 1, to_date('04-04-2018', 'dd-mm-yyyy'), to_date('09-04-2018', 'dd-mm-yyyy'), '短发', 1, to_date('21-04-2018 19:46:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into T_TEACHER (id, name, sex, birthday, work_date, specialty, tlevel, create_date)
values (2, '辛弃疾', 1, to_date('14-03-2018', 'dd-mm-yyyy'), to_date('16-03-2015', 'dd-mm-yyyy'), 'java攻城狮', 1, to_date('14-03-2018', 'dd-mm-yyyy'));
insert into T_TEACHER (id, name, sex, birthday, work_date, specialty, tlevel, create_date)
values (3, '杜甫', 2, to_date('14-03-2018', 'dd-mm-yyyy'), to_date('16-03-2015', 'dd-mm-yyyy'), 'java攻城狮', 1, to_date('14-03-2018', 'dd-mm-yyyy'));
insert into T_TEACHER (id, name, sex, birthday, work_date, specialty, tlevel, create_date)
values (4, '李清照', 2, to_date('14-03-2018', 'dd-mm-yyyy'), to_date('16-03-2015', 'dd-mm-yyyy'), 'java攻城狮', 2, to_date('14-03-2018', 'dd-mm-yyyy'));
insert into T_TEACHER (id, name, sex, birthday, work_date, specialty, tlevel, create_date)
values (5, '苏轼', 1, to_date('14-03-2018', 'dd-mm-yyyy'), to_date('16-03-2015', 'dd-mm-yyyy'), 'java攻城狮', 3, to_date('14-03-2018', 'dd-mm-yyyy'));
insert into T_TEACHER (id, name, sex, birthday, work_date, specialty, tlevel, create_date)
values (6, '毛泽东', 1, to_date('14-03-2018', 'dd-mm-yyyy'), to_date('16-03-2015', 'dd-mm-yyyy'), 'java攻城狮', 3, to_date('14-03-2018', 'dd-mm-yyyy'));
insert into T_TEACHER (id, name, sex, birthday, work_date, specialty, tlevel, create_date)
values (7, '曹操', 1, to_date('14-03-2018', 'dd-mm-yyyy'), to_date('16-03-2015', 'dd-mm-yyyy'), 'java攻城狮', 2, to_date('14-03-2018', 'dd-mm-yyyy'));
insert into T_TEACHER (id, name, sex, birthday, work_date, specialty, tlevel, create_date)
values (8, '曹植2', 1, to_date('14-03-2018', 'dd-mm-yyyy'), to_date('16-03-2015', 'dd-mm-yyyy'), 'java攻城狮2', 2, to_date('14-03-2018', 'dd-mm-yyyy'));
insert into T_TEACHER (id, name, sex, birthday, work_date, specialty, tlevel, create_date)
values (19, 'wr', 1, to_date('14-03-2018', 'dd-mm-yyyy'), to_date('16-03-2015', 'dd-mm-yyyy'), 'java攻城狮', 2, to_date('14-03-2018', 'dd-mm-yyyy'));
insert into T_TEACHER (id, name, sex, birthday, work_date, specialty, tlevel, create_date)
values (20, '猫咪', 1, to_date('14-03-2018', 'dd-mm-yyyy'), to_date('16-03-2015', 'dd-mm-yyyy'), 'java攻城狮', 3, to_date('14-03-2018', 'dd-mm-yyyy'));
insert into T_TEACHER (id, name, sex, birthday, work_date, specialty, tlevel, create_date)
values (21, 'er', 1, to_date('14-03-2018', 'dd-mm-yyyy'), to_date('16-03-2015', 'dd-mm-yyyy'), 'java攻城狮', 2, to_date('14-03-2018', 'dd-mm-yyyy'));
insert into T_TEACHER (id, name, sex, birthday, work_date, specialty, tlevel, create_date)
values (22, '猫咪', 2, to_date('14-03-2018', 'dd-mm-yyyy'), to_date('16-03-2015', 'dd-mm-yyyy'), 'java攻城狮', 3, to_date('14-03-2018', 'dd-mm-yyyy'));
insert into T_TEACHER (id, name, sex, birthday, work_date, specialty, tlevel, create_date)
values (23, 'u', 1, to_date('14-03-2018', 'dd-mm-yyyy'), to_date('16-03-2015', 'dd-mm-yyyy'), 'java攻城狮', 1, to_date('14-03-2018', 'dd-mm-yyyy'));
insert into T_TEACHER (id, name, sex, birthday, work_date, specialty, tlevel, create_date)
values (24, '猫咪', 2, to_date('14-03-2018', 'dd-mm-yyyy'), to_date('16-03-2015', 'dd-mm-yyyy'), 'java攻城狮', 2, to_date('14-03-2018', 'dd-mm-yyyy'));
insert into T_TEACHER (id, name, sex, birthday, work_date, specialty, tlevel, create_date)
values (25, '猫咪', 2, to_date('14-03-2018', 'dd-mm-yyyy'), to_date('16-03-2015', 'dd-mm-yyyy'), 'java攻城狮', 2, to_date('14-03-2018', 'dd-mm-yyyy'));
insert into T_TEACHER (id, name, sex, birthday, work_date, specialty, tlevel, create_date)
values (26, 'it', 2, to_date('14-03-2018', 'dd-mm-yyyy'), to_date('16-03-2015', 'dd-mm-yyyy'), 'java攻城狮', 5, to_date('14-03-2018', 'dd-mm-yyyy'));
insert into T_TEACHER (id, name, sex, birthday, work_date, specialty, tlevel, create_date)
values (27, '猫咪', 1, to_date('14-03-2018', 'dd-mm-yyyy'), to_date('16-03-2015', 'dd-mm-yyyy'), 'java攻城狮', 2, to_date('14-03-2018', 'dd-mm-yyyy'));
insert into T_TEACHER (id, name, sex, birthday, work_date, specialty, tlevel, create_date)
values (28, '猫咪', 2, to_date('14-03-2018', 'dd-mm-yyyy'), to_date('16-03-2015', 'dd-mm-yyyy'), 'java攻城狮', 3, to_date('14-03-2018', 'dd-mm-yyyy'));
insert into T_TEACHER (id, name, sex, birthday, work_date, specialty, tlevel, create_date)
values (29, '猫咪', 1, to_date('14-03-2018', 'dd-mm-yyyy'), to_date('16-03-2015', 'dd-mm-yyyy'), 'java攻城狮', 2, to_date('14-03-2018', 'dd-mm-yyyy'));
insert into T_TEACHER (id, name, sex, birthday, work_date, specialty, tlevel, create_date)
values (30, 'ytu', 2, to_date('14-03-2018', 'dd-mm-yyyy'), to_date('16-03-2015', 'dd-mm-yyyy'), 'java攻城狮', 2, to_date('14-03-2018', 'dd-mm-yyyy'));
insert into T_TEACHER (id, name, sex, birthday, work_date, specialty, tlevel, create_date)
values (31, 'yu', 1, to_date('14-03-2018', 'dd-mm-yyyy'), to_date('16-03-2015', 'dd-mm-yyyy'), 'java攻城狮', 3, to_date('14-03-2018', 'dd-mm-yyyy'));
insert into T_TEACHER (id, name, sex, birthday, work_date, specialty, tlevel, create_date)
values (32, '猫咪', 2, to_date('14-03-2018', 'dd-mm-yyyy'), to_date('16-03-2015', 'dd-mm-yyyy'), 'java攻城狮', 2, to_date('14-03-2018', 'dd-mm-yyyy'));
insert into T_TEACHER (id, name, sex, birthday, work_date, specialty, tlevel, create_date)
values (34, '猫咪aaaa', 1, to_date('08-03-2018', 'dd-mm-yyyy'), to_date('07-03-2018', 'dd-mm-yyyy'), '杀鸡在', 2, to_date('14-03-2018', 'dd-mm-yyyy'));
commit;
prompt 24 records loaded
prompt Loading T_USER...
insert into T_USER (id, name, birthday, sex, username, password, login_flag, role_id, file_path, create_date)
values (106, '2', to_date('11-04-2018', 'dd-mm-yyyy'), 1, '2', '1', 1, 1, '1524404002596.jpg', to_date('20-04-2018 10:15:15', 'dd-mm-yyyy hh24:mi:ss'));
insert into T_USER (id, name, birthday, sex, username, password, login_flag, role_id, file_path, create_date)
values (109, '各个', to_date('18-04-2018', 'dd-mm-yyyy'), 1, '刚刚', '1', 1, 1, '1524404387767.jpg', to_date('20-04-2018 20:20:04', 'dd-mm-yyyy hh24:mi:ss'));
insert into T_USER (id, name, birthday, sex, username, password, login_flag, role_id, file_path, create_date)
values (108, 'asdfasdf', to_date('18-04-2018', 'dd-mm-yyyy'), 1, 'asdfda', '1', 1, 1, '1524449703665.jpg', to_date('20-04-2018 14:37:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into T_USER (id, name, birthday, sex, username, password, login_flag, role_id, file_path, create_date)
values (107, 'new2', to_date('27-04-1900', 'dd-mm-yyyy'), 1, 'new 2', '1', 1, 1, '1524404762247.jpg', to_date('20-04-2018 10:16:28', 'dd-mm-yyyy hh24:mi:ss'));
insert into T_USER (id, name, birthday, sex, username, password, login_flag, role_id, file_path, create_date)
values (110, '王雪情', to_date('04-05-2018', 'dd-mm-yyyy'), 2, '智障一样的猫咪', '1', 1, 1, '1524450292425.jpg', to_date('23-04-2018 10:15:51', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 5 records loaded
prompt Enabling triggers for T_CLASS...
alter table T_CLASS enable all triggers;
prompt Enabling triggers for T_COURSE...
alter table T_COURSE enable all triggers;
prompt Enabling triggers for T_DICT...
alter table T_DICT enable all triggers;
prompt Enabling triggers for T_INCOME_DATE...
alter table T_INCOME_DATE enable all triggers;
prompt Enabling triggers for T_LOG...
alter table T_LOG enable all triggers;
prompt Enabling triggers for T_MENU...
alter table T_MENU enable all triggers;
prompt Enabling triggers for T_ROLE...
alter table T_ROLE enable all triggers;
prompt Enabling triggers for T_ROLE2MENU...
alter table T_ROLE2MENU enable all triggers;
prompt Enabling triggers for T_SCORE...
alter table T_SCORE enable all triggers;
prompt Enabling triggers for T_STUDENT...
alter table T_STUDENT enable all triggers;
prompt Enabling triggers for T_STU_COURSE...
alter table T_STU_COURSE enable all triggers;
prompt Enabling triggers for T_TEACHER...
alter table T_TEACHER enable all triggers;
prompt Enabling triggers for T_USER...
alter table T_USER enable all triggers;
set feedback on
set define on
prompt Done.


spool off
