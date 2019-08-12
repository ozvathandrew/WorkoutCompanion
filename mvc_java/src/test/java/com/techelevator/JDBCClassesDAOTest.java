package com.techelevator;

import static org.junit.Assert.assertEquals;

import java.sql.Time;
import java.util.Date;
import java.util.List;
import org.junit.Before;
import org.junit.Test;
import org.springframework.jdbc.core.JdbcTemplate;
import com.techelevator.model.Classes;
import com.techelevator.model.JDBCClassesDAO;
import com.techelevator.security.PasswordHasher;

public class JDBCClassesDAOTest extends DAOIntegrationTest {
	JdbcTemplate jdbcTemplate = new JdbcTemplate(this.getDataSource());

	private PasswordHasher hashMaster = new PasswordHasher();
	private JDBCClassesDAO dao = new JDBCClassesDAO(this.getDataSource());

	@Test
	public void saveMemberTest() {

		List<Classes> allClasses = dao.getClassesByClassName();
		Integer size = allClasses.size(); 

		assertEquals("test", allClasses.get(size - 1).getUserName());

	}

	@Before
	public void setUp() throws Exception {
//		String userNameTest = "test";
//		String name = "name";
//		Time classStartTime = new Time(11, 0, 0);
//		Time classEndTime = new Time(12, 0, 0);
//		Date classDate = new Date(2019 - 12 - 02);
//		dao.updateClassSchedule(userNameTest, name, classStartTime, classStartTime, classDate);

	}

}
