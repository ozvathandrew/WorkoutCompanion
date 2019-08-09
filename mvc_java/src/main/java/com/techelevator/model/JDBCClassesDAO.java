package com.techelevator.model;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

@Component
public class JDBCClassesDAO implements ClassesDAO {
	
	private JdbcTemplate jdbcTemplate;
	
	@Autowired
	public JDBCClassesDAO(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	@Override
	public List<Classes> getClassesByClassName() {
		List<Classes> allClasses = new ArrayList<Classes>();
		String sqlSelectAllClasses = "SELECT * FROM classes";
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlSelectAllClasses);
		while(results.next()) {
			allClasses.add(mapToRowClasses(results));
		}
		
		return allClasses;
	}
	
	private Classes mapToRowClasses(SqlRowSet row) {
		Classes classes = new Classes();
		classes.setClassId(row.getInt("class_id"));
		classes.setName(row.getString("class_name"));
		classes.setClassStartTime(row.getTime("class_start_time"));
		classes.setClassEndTime(row.getTime("class_end_time"));
		classes.setClassDate(row.getDate("class_date"));
		return classes;
//		
	}


	
}