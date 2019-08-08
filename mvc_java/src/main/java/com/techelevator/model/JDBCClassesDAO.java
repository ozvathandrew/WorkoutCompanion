package com.techelevator.model;

import java.util.ArrayList;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

@Component
public class JDBCClassesDAO implements ClassesDAO {
	
	private JdbcTemplate jdbcTemplate;

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
		classes.setClassTime(row.getDate("class_time").toLocalDate());
		return classes;
	}


	
}