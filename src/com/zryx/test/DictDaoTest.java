package com.zryx.test;
import static org.junit.Assert.*;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import com.zryx.dao.IDictDao;
import com.zryx.entity.Dict;

/**   
  spring整合JUnit演示
 */
@RunWith(SpringJUnit4ClassRunner.class)//使用junit4进行测试
@ContextConfiguration(locations={"classpath:application.xml"})
public class DictDaoTest {
	@Autowired
	private IDictDao dictDao;
	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
	}

	@AfterClass
	public static void tearDownAfterClass() throws Exception {
	}

	@Before
	public void setUp() throws Exception {
	}

	@After
	public void tearDown() throws Exception {
	}

	@Test
	public void testList() {
		Map<String ,Object> param =new HashMap<>();
		List<Dict> list=dictDao.list(param);
		for (Dict d : list) {
			System.out.println(d);
		}
		
		
	}

	@Test
	public void testDelete() {
		fail("Not yet implemented");
	}

	@Test
	public void testAdd() {
		
		
	}

	@Test
	public void testGetObjById() {
		fail("Not yet implemented");
	}

	@Test
	public void testUpdateDict() {
		fail("Not yet implemented");
	}

	

}
