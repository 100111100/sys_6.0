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
  is '�༶��Ϣ��';
comment on column U1726.T_CLASS.id
  is '��¼id';
comment on column U1726.T_CLASS.name
  is '�༶����';
comment on column U1726.T_CLASS.charger
  is '����Ա����';
comment on column U1726.T_CLASS.create_date
  is '��������';

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
  is '�γ���Ϣ��';
comment on column U1726.T_COURSE.id
  is '��¼id';
comment on column U1726.T_COURSE.name
  is '�γ�����';
comment on column U1726.T_COURSE.create_date
  is '��������';
comment on column U1726.T_COURSE.teacher_id
  is '�ڿ���ʦid';
comment on column U1726.T_COURSE.cyear
  is '��ȣ�2014��2015��2016��';
comment on column U1726.T_COURSE.sch_term
  is 'ѧ�ڣ�1-����ѧ�ڣ�2-�＾ѧ�ڣ�';
comment on column U1726.T_COURSE.credit
  is 'ѧ��';
comment on column U1726.T_COURSE.state
  is '״̬��1-������2-��Ч��';

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
  is '�ֵ��';
comment on column U1726.T_DICT.id
  is '��¼id';
comment on column U1726.T_DICT.name
  is '����';
comment on column U1726.T_DICT.dkey
  is '�ֵ�����';
comment on column U1726.T_DICT.dval
  is '�ֵ�ֵ';
comment on column U1726.T_DICT.use_flag
  is '״̬��1-����2-��Ч��';
comment on column U1726.T_DICT.order_no
  is '˳�����';
comment on column U1726.T_DICT.create_date
  is '����ʱ��';

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
  is '���ļ�¼';

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
  is '�˵���Ϣ';
comment on column U1726.T_MENU.id
  is '��¼id';
comment on column U1726.T_MENU.name
  is '����';
comment on column U1726.T_MENU.url
  is '·��';
comment on column U1726.T_MENU.pid
  is '���˵�id';
comment on column U1726.T_MENU.mlevel
  is '����1-һ����2-����-��3-Ȩ�ޣ�';
comment on column U1726.T_MENU.order_no
  is '�����';
comment on column U1726.T_MENU.create_date
  is '����ʱ��';

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
  is '��ɫ��';
comment on column U1726.T_ROLE.id
  is '��¼id';
comment on column U1726.T_ROLE.name
  is '��ɫ����';
comment on column U1726.T_ROLE.create_date
  is '����ʱ��';

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
  is '��ɫ��˵��Ĺ�ϵ��';
comment on column U1726.T_ROLE2MENU.role_id
  is '��ɫid';
comment on column U1726.T_ROLE2MENU.menu_id
  is '�˵�id';

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
  is 'ѧ���ɼ���';
comment on column U1726.T_SCORE.id
  is '��¼id';
comment on column U1726.T_SCORE.student_id
  is 'ѧ��id';
comment on column U1726.T_SCORE.study_year
  is 'ѧ��id';
comment on column U1726.T_SCORE.maths
  is '��ѧ';
comment on column U1726.T_SCORE.english
  is 'Ӣ��';

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
  is 'ѧ����Ϣ��';
comment on column U1726.T_STUDENT.id
  is '��¼id';
comment on column U1726.T_STUDENT.name
  is '����';
comment on column U1726.T_STUDENT.sex
  is '�Ա�1��2Ů';
comment on column U1726.T_STUDENT.birthday
  is '��������';
comment on column U1726.T_STUDENT.snative
  is '����';
comment on column U1726.T_STUDENT.class_id
  is '�༶id';
comment on column U1726.T_STUDENT.create_date
  is '����ʱ��';
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
  is 'ѧ��ѡ�α�';
comment on column U1726.T_STU_COURSE.id
  is '��¼id��pk��';
comment on column U1726.T_STU_COURSE.student_id
  is 'ѧ��ID(FK) ';
comment on column U1726.T_STU_COURSE.course_id
  is '�γ�ID(FK)  ';
comment on column U1726.T_STU_COURSE.remark
  is '��ע       ';
comment on column U1726.T_STU_COURSE.create_date
  is '��������   ';

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
  is '��ʦ��Ϣ��';
comment on column U1726.T_TEACHER.id
  is '��¼ID(PK)                                ';
comment on column U1726.T_TEACHER.name
  is '����                                      ';
comment on column U1726.T_TEACHER.sex
  is '�Ա�(1-��,2-Ů)                           ';
comment on column U1726.T_TEACHER.birthday
  is '��������                                  ';
comment on column U1726.T_TEACHER.work_date
  is '��ʼ��������                              ';
comment on column U1726.T_TEACHER.specialty
  is 'רҵ����                                  ';
comment on column U1726.T_TEACHER.tlevel
  is 'ְ�Ƶȼ�(1-����,2-�м�,3-�߼�)            ';
comment on column U1726.T_TEACHER.create_date
  is '��������                                  ';

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
  is '�û�����Ϣ';
comment on column U1726.T_USER.id
  is 'id';
comment on column U1726.T_USER.name
  is '����';
comment on column U1726.T_USER.birthday
  is '��������';
comment on column U1726.T_USER.sex
  is '�Ա�1��2Ů';
comment on column U1726.T_USER.username
  is '�û���';
comment on column U1726.T_USER.password
  is '����';
comment on column U1726.T_USER.login_flag
  is '��½״̬';
comment on column U1726.T_USER.role_id
  is '��ɫid';
comment on column U1726.T_USER.file_path
  is '�ļ�·��';
comment on column U1726.T_USER.create_date
  is '����ʱ��';

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
prompt Created on 2018��4��23�� by Administrator
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
  is '�༶��Ϣ��';
comment on column T_CLASS.id
  is '��¼id';
comment on column T_CLASS.name
  is '�༶����';
comment on column T_CLASS.charger
  is '����Ա����';
comment on column T_CLASS.create_date
  is '��������';

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
  is '�γ���Ϣ��';
comment on column T_COURSE.id
  is '��¼id';
comment on column T_COURSE.name
  is '�γ�����';
comment on column T_COURSE.create_date
  is '��������';
comment on column T_COURSE.teacher_id
  is '�ڿ���ʦid';
comment on column T_COURSE.cyear
  is '��ȣ�2014��2015��2016��';
comment on column T_COURSE.sch_term
  is 'ѧ�ڣ�1-����ѧ�ڣ�2-�＾ѧ�ڣ�';
comment on column T_COURSE.credit
  is 'ѧ��';
comment on column T_COURSE.state
  is '״̬��1-������2-��Ч��';

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
  is '�ֵ��';
comment on column T_DICT.id
  is '��¼id';
comment on column T_DICT.name
  is '����';
comment on column T_DICT.dkey
  is '�ֵ�����';
comment on column T_DICT.dval
  is '�ֵ�ֵ';
comment on column T_DICT.use_flag
  is '״̬��1-����2-��Ч��';
comment on column T_DICT.order_no
  is '˳�����';
comment on column T_DICT.create_date
  is '����ʱ��';

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
  is '���ļ�¼';

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
  is '�˵���Ϣ';
comment on column T_MENU.id
  is '��¼id';
comment on column T_MENU.name
  is '����';
comment on column T_MENU.url
  is '·��';
comment on column T_MENU.pid
  is '���˵�id';
comment on column T_MENU.mlevel
  is '����1-һ����2-����-��3-Ȩ�ޣ�';
comment on column T_MENU.order_no
  is '�����';
comment on column T_MENU.create_date
  is '����ʱ��';

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
  is '��ɫ��';
comment on column T_ROLE.id
  is '��¼id';
comment on column T_ROLE.name
  is '��ɫ����';
comment on column T_ROLE.create_date
  is '����ʱ��';

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
  is '��ɫ��˵��Ĺ�ϵ��';
comment on column T_ROLE2MENU.role_id
  is '��ɫid';
comment on column T_ROLE2MENU.menu_id
  is '�˵�id';

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
  is 'ѧ���ɼ���';
comment on column T_SCORE.id
  is '��¼id';
comment on column T_SCORE.student_id
  is 'ѧ��id';
comment on column T_SCORE.study_year
  is 'ѧ��id';
comment on column T_SCORE.maths
  is '��ѧ';
comment on column T_SCORE.english
  is 'Ӣ��';

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
  is 'ѧ����Ϣ��';
comment on column T_STUDENT.id
  is '��¼id';
comment on column T_STUDENT.name
  is '����';
comment on column T_STUDENT.sex
  is '�Ա�1��2Ů';
comment on column T_STUDENT.birthday
  is '��������';
comment on column T_STUDENT.snative
  is '����';
comment on column T_STUDENT.class_id
  is '�༶id';
comment on column T_STUDENT.create_date
  is '����ʱ��';
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
  is 'ѧ��ѡ�α�';
comment on column T_STU_COURSE.id
  is '��¼id��pk��';
comment on column T_STU_COURSE.student_id
  is 'ѧ��ID(FK) ';
comment on column T_STU_COURSE.course_id
  is '�γ�ID(FK)  ';
comment on column T_STU_COURSE.remark
  is '��ע       ';
comment on column T_STU_COURSE.create_date
  is '��������   ';

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
  is '��ʦ��Ϣ��';
comment on column T_TEACHER.id
  is '��¼ID(PK)                                ';
comment on column T_TEACHER.name
  is '����                                      ';
comment on column T_TEACHER.sex
  is '�Ա�(1-��,2-Ů)                           ';
comment on column T_TEACHER.birthday
  is '��������                                  ';
comment on column T_TEACHER.work_date
  is '��ʼ��������                              ';
comment on column T_TEACHER.specialty
  is 'רҵ����                                  ';
comment on column T_TEACHER.tlevel
  is 'ְ�Ƶȼ�(1-����,2-�м�,3-�߼�)            ';
comment on column T_TEACHER.create_date
  is '��������                                  ';

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
  is '�û�����Ϣ';
comment on column T_USER.id
  is 'id';
comment on column T_USER.name
  is '����';
comment on column T_USER.birthday
  is '��������';
comment on column T_USER.sex
  is '�Ա�1��2Ů';
comment on column T_USER.username
  is '�û���';
comment on column T_USER.password
  is '����';
comment on column T_USER.login_flag
  is '��½״̬';
comment on column T_USER.role_id
  is '��ɫid';
comment on column T_USER.file_path
  is '�ļ�·��';
comment on column T_USER.create_date
  is '����ʱ��';

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
values (1, '�������ʮ��', '��ѩ��', to_date('01-07-2017', 'dd-mm-yyyy'));
insert into T_CLASS (id, name, charger, create_date)
values (2, '������̶���', '��СƼ', to_date('01-07-2017', 'dd-mm-yyyy'));
insert into T_CLASS (id, name, charger, create_date)
values (3, '�����������', '��С��', to_date('01-07-2017', 'dd-mm-yyyy'));
insert into T_CLASS (id, name, charger, create_date)
values (4, '��������İ�', '¬��', to_date('01-07-2017', 'dd-mm-yyyy'));
insert into T_CLASS (id, name, charger, create_date)
values (5, '����������', '��СѾ', to_date('01-07-2017', 'dd-mm-yyyy'));
insert into T_CLASS (id, name, charger, create_date)
values (6, '�����������', '����', to_date('01-07-2017', 'dd-mm-yyyy'));
insert into T_CLASS (id, name, charger, create_date)
values (7, '��������߰�', '�����', to_date('01-07-2017', 'dd-mm-yyyy'));
insert into T_CLASS (id, name, charger, create_date)
values (10, '1', '1', to_date('12-03-2018', 'dd-mm-yyyy'));
insert into T_CLASS (id, name, charger, create_date)
values (11, '������̰˰�', '����', to_date('12-03-2018', 'dd-mm-yyyy'));
insert into T_CLASS (id, name, charger, create_date)
values (14, '�������ʮ��', '����è��', to_date('14-03-2018', 'dd-mm-yyyy'));
insert into T_CLASS (id, name, charger, create_date)
values (15, '�������̼���', '������', to_date('29-03-2018', 'dd-mm-yyyy'));
insert into T_CLASS (id, name, charger, create_date)
values (100, '��������', '��ѩ��', to_date('16-03-1995', 'dd-mm-yyyy'));
insert into T_CLASS (id, name, charger, create_date)
values (101, '��������', '��ѩ��A', to_date('16-03-1995', 'dd-mm-yyyy'));
insert into T_CLASS (id, name, charger, create_date)
values (109, '��ƶ���', '�ܶ���', to_date('21-04-2018 18:40:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into T_CLASS (id, name, charger, create_date)
values (110, '�����һ�1', 'ɵ��1', to_date('21-04-2018 18:41:31', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 15 records loaded
prompt Loading T_COURSE...
insert into T_COURSE (id, name, create_date, teacher_id, cyear, sch_term, credit, state)
values (1, '��ѧ', to_date('14-03-2018', 'dd-mm-yyyy'), 2, 1, 1, 1, 1);
insert into T_COURSE (id, name, create_date, teacher_id, cyear, sch_term, credit, state)
values (2, '����', to_date('14-03-2018', 'dd-mm-yyyy'), 2, 2, 1, 1, 1);
insert into T_COURSE (id, name, create_date, teacher_id, cyear, sch_term, credit, state)
values (3, 'Ӣ��', to_date('18-03-2018', 'dd-mm-yyyy'), 3, 3, 2, 1, 1);
insert into T_COURSE (id, name, create_date, teacher_id, cyear, sch_term, credit, state)
values (4, '����', to_date('18-03-2018', 'dd-mm-yyyy'), 4, 2, 2, 1, 1);
insert into T_COURSE (id, name, create_date, teacher_id, cyear, sch_term, credit, state)
values (5, '��ʷ', to_date('18-03-2018', 'dd-mm-yyyy'), 5, 4, 1, 1.5, 1);
insert into T_COURSE (id, name, create_date, teacher_id, cyear, sch_term, credit, state)
values (6, '����', to_date('18-03-2018', 'dd-mm-yyyy'), 6, 1, 2, 1.5, 1);
insert into T_COURSE (id, name, create_date, teacher_id, cyear, sch_term, credit, state)
values (7, '����', to_date('18-03-2018', 'dd-mm-yyyy'), 7, 2, 1, 1, 1);
insert into T_COURSE (id, name, create_date, teacher_id, cyear, sch_term, credit, state)
values (8, '����2', to_date('18-03-2018', 'dd-mm-yyyy'), 2, 3, 1, 1.5, 2);
insert into T_COURSE (id, name, create_date, teacher_id, cyear, sch_term, credit, state)
values (9, '��ѧ', to_date('18-03-2018', 'dd-mm-yyyy'), 9, 3, 1, 1, 1);
insert into T_COURSE (id, name, create_date, teacher_id, cyear, sch_term, credit, state)
values (10, '����', to_date('18-03-2018', 'dd-mm-yyyy'), 1, 4, 2, 1, 1);
insert into T_COURSE (id, name, create_date, teacher_id, cyear, sch_term, credit, state)
values (null, 'fds', to_date('21-04-2018 22:08:26', 'dd-mm-yyyy hh24:mi:ss'), 100, 1, 1, 1, 1);
commit;
prompt 11 records loaded
prompt Loading T_DICT...
insert into T_DICT (id, name, dkey, dval, use_flag, order_no, create_date)
values (1, 'SYS_SEX', '1', '��', 1, 1, to_date('08-03-2018', 'dd-mm-yyyy'));
insert into T_DICT (id, name, dkey, dval, use_flag, order_no, create_date)
values (2, 'SYS_SEX', '2', 'Ů', 1, 4, to_date('08-03-2018', 'dd-mm-yyyy'));
insert into T_DICT (id, name, dkey, dval, use_flag, order_no, create_date)
values (4, 'SYS_STATE', '1', '����', 1, 1, to_date('09-03-2018', 'dd-mm-yyyy'));
insert into T_DICT (id, name, dkey, dval, use_flag, order_no, create_date)
values (5, 'SYS_STATE', '2', '��Ч', 1, 2, to_date('09-03-2018', 'dd-mm-yyyy'));
insert into T_DICT (id, name, dkey, dval, use_flag, order_no, create_date)
values (7, 'MENU_LEVEL', '1', 'һ��', 1, 3, to_date('21-03-2018', 'dd-mm-yyyy'));
insert into T_DICT (id, name, dkey, dval, use_flag, order_no, create_date)
values (8, 'MENU_LEVEL', '2', '����', 1, 3, to_date('22-03-2018', 'dd-mm-yyyy'));
insert into T_DICT (id, name, dkey, dval, use_flag, order_no, create_date)
values (9, 'TEACHER_GRADE', '1', 'һ��', 1, 1, to_date('14-03-2018', 'dd-mm-yyyy'));
insert into T_DICT (id, name, dkey, dval, use_flag, order_no, create_date)
values (10, 'TEACHER_GRADE', '2', '����', 1, 2, to_date('30-03-2018', 'dd-mm-yyyy'));
insert into T_DICT (id, name, dkey, dval, use_flag, order_no, create_date)
values (11, 'TEACHER_GRADE', '3', '����', 1, 2, to_date('19-03-2018', 'dd-mm-yyyy'));
insert into T_DICT (id, name, dkey, dval, use_flag, order_no, create_date)
values (12, 'TEACHER_GRADE', '4', '�ļ�', 1, 2, to_date('22-03-2018', 'dd-mm-yyyy'));
insert into T_DICT (id, name, dkey, dval, use_flag, order_no, create_date)
values (13, 'MENU_LEVEL', '3', '����Ȩ��', 1, 1, to_date('22-03-2018', 'dd-mm-yyyy'));
insert into T_DICT (id, name, dkey, dval, use_flag, order_no, create_date)
values (14, 'CYEAR', '1', '��һѧ��', 1, 1, to_date('29-03-2018', 'dd-mm-yyyy'));
insert into T_DICT (id, name, dkey, dval, use_flag, order_no, create_date)
values (15, 'CYEAR', '2', '�ڶ�ѧ��', 1, 1, to_date('20-03-2018', 'dd-mm-yyyy'));
insert into T_DICT (id, name, dkey, dval, use_flag, order_no, create_date)
values (16, 'CYEAR', '3', '����ѧ��', 1, 1, to_date('28-03-2018', 'dd-mm-yyyy'));
insert into T_DICT (id, name, dkey, dval, use_flag, order_no, create_date)
values (17, 'CYEAR', '4', '����ѧ��', 1, 1, to_date('28-03-2018', 'dd-mm-yyyy'));
insert into T_DICT (id, name, dkey, dval, use_flag, order_no, create_date)
values (18, 'SCH_TERM', '1', '����', 1, 1, to_date('28-03-2018', 'dd-mm-yyyy'));
insert into T_DICT (id, name, dkey, dval, use_flag, order_no, create_date)
values (19, 'SCH_TERM', '2', '�＾', 1, 1, to_date('20-03-2018', 'dd-mm-yyyy'));
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
values ('���ݿ���޸���ST_INFO  TABLE', to_date('13-04-2018 12:04:25', 'dd-mm-yyyy hh24:mi:ss'));
insert into T_LOG (log, create_date)
values ('���ݿ���޸���PROC_TEXT03  PROCEDURE', to_date('14-04-2018 10:43:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into T_LOG (log, create_date)
values ('���ݿ���޸���PROC_TEXT03  PROCEDURE', to_date('14-04-2018 10:43:52', 'dd-mm-yyyy hh24:mi:ss'));
insert into T_LOG (log, create_date)
values ('proc_text03', to_date('14-04-2018 10:44:03', 'dd-mm-yyyy hh24:mi:ss'));
insert into T_LOG (log, create_date)
values ('���ݿ���޸���T_STU_COURSE  TABLE', to_date('14-04-2018 19:10:29', 'dd-mm-yyyy hh24:mi:ss'));
insert into T_LOG (log, create_date)
values ('���ݿ���޸���SEQ_STU_COURSE  SEQUENCE', to_date('14-04-2018 19:13:09', 'dd-mm-yyyy hh24:mi:ss'));
insert into T_LOG (log, create_date)
values ('���ݿ���޸���T_ROLE2MENU  TABLE', to_date('14-04-2018 19:40:50', 'dd-mm-yyyy hh24:mi:ss'));
insert into T_LOG (log, create_date)
values ('���ݿ���޸���T_ROLE2MENU  TABLE', to_date('14-04-2018 19:40:53', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 8 records loaded
prompt Loading T_MENU...
insert into T_MENU (id, name, url, pid, mlevel, order_no, create_date)
values (1, 'ϵͳ����', 'url', 0, 1, 1, to_date('14-03-2018', 'dd-mm-yyyy'));
insert into T_MENU (id, name, url, pid, mlevel, order_no, create_date)
values (2, '��������', 'url', 0, 1, 2, to_date('21-03-2018', 'dd-mm-yyyy'));
insert into T_MENU (id, name, url, pid, mlevel, order_no, create_date)
values (3, '�ֵ����', 'dict_list.do', 1, 2, 1, to_date('16-03-2018', 'dd-mm-yyyy'));
insert into T_MENU (id, name, url, pid, mlevel, order_no, create_date)
values (4, '�˵�����', 'menu_list.do', 1, 2, 5, to_date('16-03-2018', 'dd-mm-yyyy'));
insert into T_MENU (id, name, url, pid, mlevel, order_no, create_date)
values (5, '��ɫ����', 'role_list.do', 1, 2, 10, to_date('16-03-2018', 'dd-mm-yyyy'));
insert into T_MENU (id, name, url, pid, mlevel, order_no, create_date)
values (6, '�û�����', 'user_list.do', 1, 2, 1, to_date('16-03-2018', 'dd-mm-yyyy'));
insert into T_MENU (id, name, url, pid, mlevel, order_no, create_date)
values (7, '��ѧ����', 'URL', 0, 1, 2, to_date('16-03-2018', 'dd-mm-yyyy'));
insert into T_MENU (id, name, url, pid, mlevel, order_no, create_date)
values (8, '�༶����', 'tclass_list.do', 2, 2, 2, to_date('16-03-2018', 'dd-mm-yyyy'));
insert into T_MENU (id, name, url, pid, mlevel, order_no, create_date)
values (9, 'ѧ������', 'student_list.do', 2, 2, 1, to_date('16-03-2018', 'dd-mm-yyyy'));
insert into T_MENU (id, name, url, pid, mlevel, order_no, create_date)
values (10, '�γ̹���', 'course_list.do', 2, 2, 2, to_date('16-03-2018', 'dd-mm-yyyy'));
insert into T_MENU (id, name, url, pid, mlevel, order_no, create_date)
values (11, 'ѡ�ι���', 'stuCourse_list.do', 7, 2, 1, to_date('16-03-2018', 'dd-mm-yyyy'));
insert into T_MENU (id, name, url, pid, mlevel, order_no, create_date)
values (12, '�ɼ�����', 'url', 7, 2, 2, to_date('16-03-2018', 'dd-mm-yyyy'));
insert into T_MENU (id, name, url, pid, mlevel, order_no, create_date)
values (13, '�û�����', 'user_add', 6, 3, 1, to_date('16-03-2018', 'dd-mm-yyyy'));
insert into T_MENU (id, name, url, pid, mlevel, order_no, create_date)
values (22, '�û�ɾ��', 'user_delete.do', 6, 3, 1, to_date('22-03-2018', 'dd-mm-yyyy'));
insert into T_MENU (id, name, url, pid, mlevel, order_no, create_date)
values (23, '��ʦ����', 'teacher_list.do', 7, 2, null, null);
commit;
prompt 15 records loaded
prompt Loading T_ROLE...
insert into T_ROLE (id, name, create_date)
values (1, '����Ա', to_date('22-03-2018', 'dd-mm-yyyy'));
insert into T_ROLE (id, name, create_date)
values (2, '��ʦ��ɫ', to_date('30-03-2018', 'dd-mm-yyyy'));
insert into T_ROLE (id, name, create_date)
values (3, 'ѧ����ɫ', to_date('21-03-2018', 'dd-mm-yyyy'));
insert into T_ROLE (id, name, create_date)
values (9, '����', to_date('21-03-2018', 'dd-mm-yyyy'));
insert into T_ROLE (id, name, create_date)
values (10, '��', to_date('21-03-2018', 'dd-mm-yyyy'));
insert into T_ROLE (id, name, create_date)
values (100, 'fff�õ�55', to_date('20-04-2018 20:52:52', 'dd-mm-yyyy hh24:mi:ss'));
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
values (1, 1, '2014-����', 89.5, 200.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (2, 1, '2015-����', 80.5, 190.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (3, 2, '2015-����', 114.5, 189.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (4, 3, '2015-����', 123.5, 79.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (5, 4, '2014-����', 119.5, 69.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (6, 5, '2014-����', 94.5, 80.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (7, 6, '2014-����', 94.5, 200.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (8, 7, '2014-����', 94.5, 156.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (9, 8, '2014-����', 94.5, 200.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (10, 9, '2014-����', 94.5, 200.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (11, 10, '2014-����', 114.5, 189.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (12, 11, '2014-����', 114.5, 69.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (13, 12, '2014-����', 94.5, 47.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (14, 13, '2014-����', 84.5, 80.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (15, 14, '2014-����', 114.5, 189.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (16, 1, '2014-�＾', 109.5, 189.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (17, 2, '2014-�＾', 94.5, 200.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (18, 3, '2014-�＾', 94.5, 79.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (19, 4, '2014-�＾', 119.5, 58.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (20, 5, '2014-�＾', 94.5, 80.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (21, 6, '2014-�＾', 94.5, 200.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (22, 7, '2014-�＾', 104.5, 200.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (23, 8, '2014-�＾', 94.5, 180.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (24, 9, '2014-�＾', 94.5, 200.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (25, 10, '2014-�＾', 114.5, 189.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (26, 11, '2014-�＾', 114.5, 69.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (27, 12, '2014-�＾', 94.5, 69.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (28, 13, '2014-�＾', 84.5, 50.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (29, 14, '2014-�＾', 114.5, 189.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (30, 1, '2015-����', 89.5, 189.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (31, 2, '2015-����', 94.5, 200.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (32, 3, '2015-����', 114.5, 79.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (33, 4, '2015-����', 93.5, 80.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (34, 5, '2015-����', 87.5, 80.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (35, 6, '2015-����', 114.5, 189.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (36, 7, '2015-����', 94.5, 189.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (37, 8, '2015-����', 108.5, 199.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (38, 9, '2015-����', 94.5, 200.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (39, 10, '2015-����', 94.5, 200.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (40, 11, '2015-����', 94.5, 80.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (41, 12, '2015-����', 94.5, 80.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (42, 13, '2015-����', 84.5, 80.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (43, 14, '2015-����', 114.5, 189.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (44, 1, '2014-�＾', 109.5, 189.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (45, 2, '2014-�＾', 94.5, 189.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (46, 3, '2014-�＾', 94.5, 90.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (47, 4, '2014-�＾', 119.5, 69.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (48, 5, '2014-�＾', 114.5, 69.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (49, 6, '2014-�＾', 94.5, 200.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (50, 7, '2014-�＾', 94.5, 189.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (51, 8, '2014-�＾', 114.5, 189.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (52, 9, '2014-�＾', 94.5, 200.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (53, 10, '2014-�＾', 94.5, 200.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (54, 11, '2014-�＾', 94.5, 80.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (55, 12, '2014-�＾', 94.5, 80.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (56, 13, '2014-�＾', 84.5, 80.5);
insert into T_SCORE (id, student_id, study_year, maths, english)
values (57, 14, '2014-�＾', 114.5, 189.5);
commit;
prompt 57 records loaded
prompt Loading T_STUDENT...
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (1, 'л����1', 2, to_date('01-01-1999', 'dd-mm-yyyy'), null, 3, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (2, 'л��2', 2, to_date('01-01-1999', 'dd-mm-yyyy'), '������ɫ', 3, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (3, '55555555555', 1, to_date('08-12-1994', 'dd-mm-yyyy'), '������ɫ1', 4, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (4, '�ν�4', 1, to_date('14-02-1984', 'dd-mm-yyyy'), '������ɫ', 2, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (5, '�ο�5', 1, to_date('08-12-1990', 'dd-mm-yyyy'), '��������', 2, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (6, '¬��6', 2, to_date('14-03-1992', 'dd-mm-yyyy'), '������ɫ', 10, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (7, 'ΤС��7', 2, to_date('14-05-1993', 'dd-mm-yyyy'), '������ɫ', 3, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (8, '��С��8', 2, to_date('12-02-1995', 'dd-mm-yyyy'), '��������', 4, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (9, 'л��9', 2, to_date('04-12-1995', 'dd-mm-yyyy'), '��������', 5, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (102, '��ά', 1, to_date('05-04-2018', 'dd-mm-yyyy'), 'Խ��', 1, to_date('14-04-2018 20:38:02', 'dd-mm-yyyy hh24:mi:ss'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (11, '����', 1, to_date('14-02-1994', 'dd-mm-yyyy'), '������ɫ', 5, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (12, '����', 1, to_date('20-03-1995', 'dd-mm-yyyy'), '��������', 2, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (13, '¬�', 1, to_date('14-03-1992', 'dd-mm-yyyy'), '������ɫ', 1, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (14, '����', 2, to_date('14-05-1993', 'dd-mm-yyyy'), '������ɫ', 3, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (15, '�ܱ���', 1, to_date('12-02-1995', 'dd-mm-yyyy'), '��������', 4, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (16, 'лʤ', 1, to_date('04-12-1995', 'dd-mm-yyyy'), '��������', 5, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (17, '��С��', 2, to_date('14-12-1994', 'dd-mm-yyyy'), '������ɫ', 1, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (19, '�ƿ�', 1, to_date('08-12-1990', 'dd-mm-yyyy'), '��������', 2, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (20, '�', 2, to_date('14-03-1992', 'dd-mm-yyyy'), '������ɫ', 1, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (21, '��С��', 2, to_date('14-05-1993', 'dd-mm-yyyy'), '������ɫ', 3, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (22, '��С��', 2, to_date('12-02-1995', 'dd-mm-yyyy'), '��������', 4, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (23, '����', 2, to_date('04-12-1995', 'dd-mm-yyyy'), '��������', 5, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (24, '����', 2, to_date('14-12-1994', 'dd-mm-yyyy'), '������ɫ', 1, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (25, '����', 1, to_date('14-02-1994', 'dd-mm-yyyy'), '������ɫ', 5, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (26, '¬��', 1, to_date('08-12-1990', 'dd-mm-yyyy'), '��������', 2, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (27, '���', 1, to_date('14-03-1992', 'dd-mm-yyyy'), '������ɫ', 1, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (28, 'л��', 2, to_date('14-05-1993', 'dd-mm-yyyy'), '������ɫ', 3, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (29, '������', 1, to_date('12-02-1995', 'dd-mm-yyyy'), '��������', 4, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (30, 'л®', 1, to_date('04-12-1995', 'dd-mm-yyyy'), '��������', 5, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (31, '�����û�1', 2, to_date('25-01-1994', 'dd-mm-yyyy'), '������ɫ', 5, to_date('03-01-2017', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (32, '1', 1, to_date('25-07-2017', 'dd-mm-yyyy'), '1', 3, to_date('20-07-2017', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (33, 'л����', 2, to_date('14-12-2016', 'dd-mm-yyyy'), '������ɫ', 3, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (34, 'л��', 2, to_date('14-05-1993', 'dd-mm-yyyy'), '������ɫ', 3, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (35, '��С��', 1, to_date('08-12-1994', 'dd-mm-yyyy'), '������ɫ1', 4, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (36, '�ν�', 1, to_date('14-02-1984', 'dd-mm-yyyy'), '������ɫ', 1, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (37, '�ο�', 1, to_date('08-12-1990', 'dd-mm-yyyy'), '��������', 2, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (38, '¬��', 2, to_date('14-03-1992', 'dd-mm-yyyy'), '������ɫ', 1, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (39, 'ΤС��', 2, to_date('14-05-1993', 'dd-mm-yyyy'), '������ɫ', 3, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (40, '��С��', 2, to_date('12-02-1995', 'dd-mm-yyyy'), '��������', 4, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (41, 'л��', 2, to_date('04-12-1995', 'dd-mm-yyyy'), '��������', 5, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (42, '����', 2, to_date('14-12-1994', 'dd-mm-yyyy'), '������ɫ', 1, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (43, '����', 1, to_date('14-02-1994', 'dd-mm-yyyy'), '������ɫ', 5, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (44, '����', 1, to_date('08-12-1990', 'dd-mm-yyyy'), '��������', 2, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (46, '����', 2, to_date('14-05-1993', 'dd-mm-yyyy'), '������ɫ', 3, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (47, '�ܱ���', 1, to_date('12-02-1995', 'dd-mm-yyyy'), '��������', 4, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (48, 'лʤ', 1, to_date('04-12-1995', 'dd-mm-yyyy'), '��������', 5, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (107, '����', 1, to_date('25-04-2018', 'dd-mm-yyyy'), '����', 3, to_date('21-04-2018 16:51:34', 'dd-mm-yyyy hh24:mi:ss'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (50, '�ܽ�2', 2, to_date('14-02-1994', 'dd-mm-yyyy'), '��������', 3, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (51, '�ƿ�', 1, to_date('08-12-1990', 'dd-mm-yyyy'), '��������', 2, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (52, '�1', 1, to_date('14-03-1992', 'dd-mm-yyyy'), '������ɫ1', 5, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (53, '��С��', 2, to_date('14-05-1993', 'dd-mm-yyyy'), '������ɫ', 3, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (54, '��С��', 2, to_date('12-02-1995', 'dd-mm-yyyy'), '��������', 4, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (55, '����', 2, to_date('04-12-1995', 'dd-mm-yyyy'), '��������', 5, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (56, '����', 2, to_date('14-12-1994', 'dd-mm-yyyy'), '������ɫ', 1, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (57, '����', 1, to_date('14-02-1994', 'dd-mm-yyyy'), '������ɫ', 5, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (58, '¬��', 1, to_date('08-12-1990', 'dd-mm-yyyy'), '��������', 2, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (59, '���', 1, to_date('14-03-1992', 'dd-mm-yyyy'), '������ɫ', 1, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (60, 'л��', 2, to_date('14-05-1993', 'dd-mm-yyyy'), '������ɫ', 3, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (61, '������', 1, to_date('12-02-1995', 'dd-mm-yyyy'), '��������', 4, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (62, 'л®', 1, to_date('04-12-1995', 'dd-mm-yyyy'), '��������', 5, to_date('23-12-2016', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (63, '����һ����è��', 1, to_date('21-03-2018', 'dd-mm-yyyy'), '��������', 2, to_date('15-03-2018', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (64, '111111111111111', 1, to_date('22-03-2018', 'dd-mm-yyyy'), '11111111111111', 2, to_date('15-03-2018', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (65, 'dddddddddddd', 1, to_date('23-03-2018', 'dd-mm-yyyy'), '55555555555', null, to_date('15-03-2018', 'dd-mm-yyyy'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (101, '��ά', 1, to_date('05-04-2018', 'dd-mm-yyyy'), 'Խ��', 1, to_date('14-04-2018 20:38:02', 'dd-mm-yyyy hh24:mi:ss'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (103, 'ָ����', 1, to_date('20-04-2018', 'dd-mm-yyyy'), '������', 1, to_date('14-04-2018 20:40:27', 'dd-mm-yyyy hh24:mi:ss'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (104, '��������', 1, to_date('19-04-2018', 'dd-mm-yyyy'), '������', 4, to_date('14-04-2018 20:42:35', 'dd-mm-yyyy hh24:mi:ss'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (105, '��˹�ٷ�', 1, to_date('18-04-2018', 'dd-mm-yyyy'), '����˵��', 6, to_date('14-04-2018 20:44:07', 'dd-mm-yyyy hh24:mi:ss'));
insert into T_STUDENT (id, name, sex, birthday, snative, class_id, create_date)
values (106, 'new', 1, to_date('26-04-2018', 'dd-mm-yyyy'), '��������', 3, to_date('21-04-2018 16:42:43', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 68 records loaded
prompt Loading T_STU_COURSE...
insert into T_STU_COURSE (id, student_id, course_id, remark, create_date)
values (1, 1, 2, '��ĩ�Ͽ�', to_date('29-03-2018', 'dd-mm-yyyy'));
insert into T_STU_COURSE (id, student_id, course_id, remark, create_date)
values (3, 13, 1, '�ռ��ڲ��ռ�', to_date('19-03-2018', 'dd-mm-yyyy'));
insert into T_STU_COURSE (id, student_id, course_id, remark, create_date)
values (4, 13, 1, '������', to_date('19-03-2018', 'dd-mm-yyyy'));
insert into T_STU_COURSE (id, student_id, course_id, remark, create_date)
values (2, 17, 10, 'ɵ�ư�', to_date('22-04-2018 09:56:34', 'dd-mm-yyyy hh24:mi:ss'));
insert into T_STU_COURSE (id, student_id, course_id, remark, create_date)
values (5, 20, 1, '������', to_date('22-04-2018 09:57:37', 'dd-mm-yyyy hh24:mi:ss'));
insert into T_STU_COURSE (id, student_id, course_id, remark, create_date)
values (100, 20, 10, '��ʾ��������', to_date('22-04-2018 10:06:02', 'dd-mm-yyyy hh24:mi:ss'));
insert into T_STU_COURSE (id, student_id, course_id, remark, create_date)
values (101, 1, 10, '�����ɴ�', to_date('22-04-2018 16:15:50', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 7 records loaded
prompt Loading T_TEACHER...
insert into T_TEACHER (id, name, sex, birthday, work_date, specialty, tlevel, create_date)
values (1, '���', 2, to_date('14-03-2018', 'dd-mm-yyyy'), to_date('16-03-2015', 'dd-mm-yyyy'), 'java����ʨ������Ϊν', 3, to_date('14-03-2018', 'dd-mm-yyyy'));
insert into T_TEACHER (id, name, sex, birthday, work_date, specialty, tlevel, create_date)
values (100, '����', 1, to_date('04-04-2018', 'dd-mm-yyyy'), to_date('09-04-2018', 'dd-mm-yyyy'), '�̷�', 1, to_date('21-04-2018 19:46:08', 'dd-mm-yyyy hh24:mi:ss'));
insert into T_TEACHER (id, name, sex, birthday, work_date, specialty, tlevel, create_date)
values (2, '������', 1, to_date('14-03-2018', 'dd-mm-yyyy'), to_date('16-03-2015', 'dd-mm-yyyy'), 'java����ʨ', 1, to_date('14-03-2018', 'dd-mm-yyyy'));
insert into T_TEACHER (id, name, sex, birthday, work_date, specialty, tlevel, create_date)
values (3, '�Ÿ�', 2, to_date('14-03-2018', 'dd-mm-yyyy'), to_date('16-03-2015', 'dd-mm-yyyy'), 'java����ʨ', 1, to_date('14-03-2018', 'dd-mm-yyyy'));
insert into T_TEACHER (id, name, sex, birthday, work_date, specialty, tlevel, create_date)
values (4, '������', 2, to_date('14-03-2018', 'dd-mm-yyyy'), to_date('16-03-2015', 'dd-mm-yyyy'), 'java����ʨ', 2, to_date('14-03-2018', 'dd-mm-yyyy'));
insert into T_TEACHER (id, name, sex, birthday, work_date, specialty, tlevel, create_date)
values (5, '����', 1, to_date('14-03-2018', 'dd-mm-yyyy'), to_date('16-03-2015', 'dd-mm-yyyy'), 'java����ʨ', 3, to_date('14-03-2018', 'dd-mm-yyyy'));
insert into T_TEACHER (id, name, sex, birthday, work_date, specialty, tlevel, create_date)
values (6, 'ë��', 1, to_date('14-03-2018', 'dd-mm-yyyy'), to_date('16-03-2015', 'dd-mm-yyyy'), 'java����ʨ', 3, to_date('14-03-2018', 'dd-mm-yyyy'));
insert into T_TEACHER (id, name, sex, birthday, work_date, specialty, tlevel, create_date)
values (7, '�ܲ�', 1, to_date('14-03-2018', 'dd-mm-yyyy'), to_date('16-03-2015', 'dd-mm-yyyy'), 'java����ʨ', 2, to_date('14-03-2018', 'dd-mm-yyyy'));
insert into T_TEACHER (id, name, sex, birthday, work_date, specialty, tlevel, create_date)
values (8, '��ֲ2', 1, to_date('14-03-2018', 'dd-mm-yyyy'), to_date('16-03-2015', 'dd-mm-yyyy'), 'java����ʨ2', 2, to_date('14-03-2018', 'dd-mm-yyyy'));
insert into T_TEACHER (id, name, sex, birthday, work_date, specialty, tlevel, create_date)
values (19, 'wr', 1, to_date('14-03-2018', 'dd-mm-yyyy'), to_date('16-03-2015', 'dd-mm-yyyy'), 'java����ʨ', 2, to_date('14-03-2018', 'dd-mm-yyyy'));
insert into T_TEACHER (id, name, sex, birthday, work_date, specialty, tlevel, create_date)
values (20, 'è��', 1, to_date('14-03-2018', 'dd-mm-yyyy'), to_date('16-03-2015', 'dd-mm-yyyy'), 'java����ʨ', 3, to_date('14-03-2018', 'dd-mm-yyyy'));
insert into T_TEACHER (id, name, sex, birthday, work_date, specialty, tlevel, create_date)
values (21, 'er', 1, to_date('14-03-2018', 'dd-mm-yyyy'), to_date('16-03-2015', 'dd-mm-yyyy'), 'java����ʨ', 2, to_date('14-03-2018', 'dd-mm-yyyy'));
insert into T_TEACHER (id, name, sex, birthday, work_date, specialty, tlevel, create_date)
values (22, 'è��', 2, to_date('14-03-2018', 'dd-mm-yyyy'), to_date('16-03-2015', 'dd-mm-yyyy'), 'java����ʨ', 3, to_date('14-03-2018', 'dd-mm-yyyy'));
insert into T_TEACHER (id, name, sex, birthday, work_date, specialty, tlevel, create_date)
values (23, 'u', 1, to_date('14-03-2018', 'dd-mm-yyyy'), to_date('16-03-2015', 'dd-mm-yyyy'), 'java����ʨ', 1, to_date('14-03-2018', 'dd-mm-yyyy'));
insert into T_TEACHER (id, name, sex, birthday, work_date, specialty, tlevel, create_date)
values (24, 'è��', 2, to_date('14-03-2018', 'dd-mm-yyyy'), to_date('16-03-2015', 'dd-mm-yyyy'), 'java����ʨ', 2, to_date('14-03-2018', 'dd-mm-yyyy'));
insert into T_TEACHER (id, name, sex, birthday, work_date, specialty, tlevel, create_date)
values (25, 'è��', 2, to_date('14-03-2018', 'dd-mm-yyyy'), to_date('16-03-2015', 'dd-mm-yyyy'), 'java����ʨ', 2, to_date('14-03-2018', 'dd-mm-yyyy'));
insert into T_TEACHER (id, name, sex, birthday, work_date, specialty, tlevel, create_date)
values (26, 'it', 2, to_date('14-03-2018', 'dd-mm-yyyy'), to_date('16-03-2015', 'dd-mm-yyyy'), 'java����ʨ', 5, to_date('14-03-2018', 'dd-mm-yyyy'));
insert into T_TEACHER (id, name, sex, birthday, work_date, specialty, tlevel, create_date)
values (27, 'è��', 1, to_date('14-03-2018', 'dd-mm-yyyy'), to_date('16-03-2015', 'dd-mm-yyyy'), 'java����ʨ', 2, to_date('14-03-2018', 'dd-mm-yyyy'));
insert into T_TEACHER (id, name, sex, birthday, work_date, specialty, tlevel, create_date)
values (28, 'è��', 2, to_date('14-03-2018', 'dd-mm-yyyy'), to_date('16-03-2015', 'dd-mm-yyyy'), 'java����ʨ', 3, to_date('14-03-2018', 'dd-mm-yyyy'));
insert into T_TEACHER (id, name, sex, birthday, work_date, specialty, tlevel, create_date)
values (29, 'è��', 1, to_date('14-03-2018', 'dd-mm-yyyy'), to_date('16-03-2015', 'dd-mm-yyyy'), 'java����ʨ', 2, to_date('14-03-2018', 'dd-mm-yyyy'));
insert into T_TEACHER (id, name, sex, birthday, work_date, specialty, tlevel, create_date)
values (30, 'ytu', 2, to_date('14-03-2018', 'dd-mm-yyyy'), to_date('16-03-2015', 'dd-mm-yyyy'), 'java����ʨ', 2, to_date('14-03-2018', 'dd-mm-yyyy'));
insert into T_TEACHER (id, name, sex, birthday, work_date, specialty, tlevel, create_date)
values (31, 'yu', 1, to_date('14-03-2018', 'dd-mm-yyyy'), to_date('16-03-2015', 'dd-mm-yyyy'), 'java����ʨ', 3, to_date('14-03-2018', 'dd-mm-yyyy'));
insert into T_TEACHER (id, name, sex, birthday, work_date, specialty, tlevel, create_date)
values (32, 'è��', 2, to_date('14-03-2018', 'dd-mm-yyyy'), to_date('16-03-2015', 'dd-mm-yyyy'), 'java����ʨ', 2, to_date('14-03-2018', 'dd-mm-yyyy'));
insert into T_TEACHER (id, name, sex, birthday, work_date, specialty, tlevel, create_date)
values (34, 'è��aaaa', 1, to_date('08-03-2018', 'dd-mm-yyyy'), to_date('07-03-2018', 'dd-mm-yyyy'), 'ɱ����', 2, to_date('14-03-2018', 'dd-mm-yyyy'));
commit;
prompt 24 records loaded
prompt Loading T_USER...
insert into T_USER (id, name, birthday, sex, username, password, login_flag, role_id, file_path, create_date)
values (106, '2', to_date('11-04-2018', 'dd-mm-yyyy'), 1, '2', '1', 1, 1, '1524404002596.jpg', to_date('20-04-2018 10:15:15', 'dd-mm-yyyy hh24:mi:ss'));
insert into T_USER (id, name, birthday, sex, username, password, login_flag, role_id, file_path, create_date)
values (109, '����', to_date('18-04-2018', 'dd-mm-yyyy'), 1, '�ո�', '1', 1, 1, '1524404387767.jpg', to_date('20-04-2018 20:20:04', 'dd-mm-yyyy hh24:mi:ss'));
insert into T_USER (id, name, birthday, sex, username, password, login_flag, role_id, file_path, create_date)
values (108, 'asdfasdf', to_date('18-04-2018', 'dd-mm-yyyy'), 1, 'asdfda', '1', 1, 1, '1524449703665.jpg', to_date('20-04-2018 14:37:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into T_USER (id, name, birthday, sex, username, password, login_flag, role_id, file_path, create_date)
values (107, 'new2', to_date('27-04-1900', 'dd-mm-yyyy'), 1, 'new 2', '1', 1, 1, '1524404762247.jpg', to_date('20-04-2018 10:16:28', 'dd-mm-yyyy hh24:mi:ss'));
insert into T_USER (id, name, birthday, sex, username, password, login_flag, role_id, file_path, create_date)
values (110, '��ѩ��', to_date('04-05-2018', 'dd-mm-yyyy'), 2, '����һ����è��', '1', 1, 1, '1524450292425.jpg', to_date('23-04-2018 10:15:51', 'dd-mm-yyyy hh24:mi:ss'));
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
