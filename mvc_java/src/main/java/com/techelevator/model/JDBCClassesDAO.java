package com.techelevator.model;

import java.sql.Time;
import java.util.ArrayList;
import java.util.Date;
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
		while (results.next()) {
			allClasses.add(mapToRowClasses(results));
		}

		return allClasses;
	}

	@Override
	public void updateClassSchedule(String userName, String workoutClassName, Time classStartTime, Time classEndTime,
			Date classDate) {

		String sqlUpdateClassSchedule = "INSERT INTO class_schedule(username, class_name, class_start_time, class_end_time, class_date) VALUES (?,?,?,?,?)";
		jdbcTemplate.update(sqlUpdateClassSchedule, userName, workoutClassName, classStartTime, classEndTime, classDate);
	}

//	@Override
//	public List<Classes> getMemberByClass(String userNameTest) {
//		List<Classes> allClasses = new ArrayList<Classes>();
//		String getMemberByClass = "SELECT * FROM class_schedule WHERE username = ?";
//		SqlRowSet results = jdbcTemplate.queryForRowSet(getMemberByClass, userNameTest);
//		while (results.next()) {
//			allClasses.add(mapToRowClassesSchedule(results));
//
//		}
//
//		return allClasses;
//
//	}

	public Classes mapToRowClasses(SqlRowSet row) {
		Classes classes = new Classes();
		classes.setClassId(row.getInt("class_id"));
		classes.setWorkoutClassName(row.getString("class_name"));
		classes.setClassStartTime(row.getTime("class_start_time"));
		classes.setClassEndTime(row.getTime("class_end_time"));
		classes.setClassDate(row.getDate("class_date"));
		return classes;
	}
//
//	public Classes mapToRowClassesSchedule(SqlRowSet row) {
//		Classes classes = new Classes();
//		classes.setWorkoutClassName(row.getString("class_name"));
//		classes.setUserName(row.getString("username"));
//		classes.setClassStartTime(row.getTime("class_start_time"));
//		classes.setClassEndTime(row.getTime("class_end_time"));
//		classes.setClassDate(row.getDate("class_date"));
//		return classes;
//	}

}