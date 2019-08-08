package com.techelevator.model.session;

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
public class JDBCSessionDAO implements SessionDAO {

	private JdbcTemplate jdbcTemplate;

	@Autowired
	public JDBCSessionDAO(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	@Override
	public List<Session> getAllSessions() {
		List<Session> allSessions = new ArrayList<Session>();
		String sqlAllSessions = "SELECT * FROM workout_log";
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlAllSessions);
		while (results.next()) {
			allSessions.add(mapToRowSession(results));
		}
		return allSessions;
	}

	@Override
	public void saveSession(String username, Integer equipment_id, Integer reps, Integer sets, Integer weight,
			Time start, Time end) {
		String sqlMemberSession = "INSERT INTO workout_log (workout_log_start, workout_log_end, workout_log_username, workout_log_equipment_id, workout_log_reps, workout_log_sets, workout_log_weights) "
				+ "VALUES (?, ?, ?, ?, ?, ?, ?)";
		jdbcTemplate.update(sqlMemberSession, username, equipment_id, reps, sets, weight, start, end);

	}

	@Override
	public List<Session> getAllSessionsPerMember(String username) {
		List<Session> perMemberSessions = new ArrayList<Session>();
		String sqlSessionPerMember = "SELECT * FROM workout_log WHERE username = ?";
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlSessionPerMember, username);
		while (results.next()) {
			perMemberSessions.add(mapToRowSession(results));
		}
		return perMemberSessions;
	}

	private Session mapToRowSession(SqlRowSet row) {
		Session session = new Session();
		session.setSets(row.getInt("workout_log_sets"));
		session.setReps(row.getInt("workout_log_reps"));
		session.setWeights(row.getInt("workout_log_weights"));
		session.setStart(row.getTime("workout_log_start"));
		session.setEnd(row.getTime("workout_log_end"));
		return session;
	}

	@Override
	public List<Session> getAllSessionsPerMemberByDate(String username, Date date) {
		List<Session> perMemberSessionsByDate = new ArrayList<Session>();
		String sessions = "SELECT * FROM workout_log WHERE username = ? AND date = ?";
		SqlRowSet results = jdbcTemplate.queryForRowSet(sessions, username, date);
		while (results.next()) {
			perMemberSessionsByDate.add(mapToRowSession(results));
		}
		return perMemberSessionsByDate;
	}

	@Override
	public List<Session> getAllSessionsPerMemberByMonth(String username, String month) {
		List<Session> monthlySessions = new ArrayList<Session>();
		//find a sql string to grab all sessions by momth
		String monthNumber = getMonthNumber(month);
		String sqlMonthlySessions = "SELECT * FROM workout_log WHERE username = ? AND date = ?";
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlMonthlySessions, username, monthNumber);
		while(results.next()) {
			monthlySessions.add(mapToRowSession(results));
		}
		return monthlySessions;
	}

	private String getMonthNumber(String input) {
		input = input.toLowerCase();
		switch (input) {
		case "january":
		case "jan":
			input = "1";
			break;

		case "febuary":
		case "feb":
			input = "2";
			break;

		case "march":
		case "mar":
			input = "3";
			break;

		case "april":
		case "apr":
			input = "4";
			break;

		case "may":
			input = "5";
			break;

		case "june":
		case "jun":
			input = "6";
			break;

		case "july":
		case "jul":
			input = "7";
			break;

		case "august":
		case "aug":
			input = "8";
			break;

		case "september":
		case "sep":
		case "sept":
			input = "9";
			break;

		case "october":
		case "oct":
			input = "10";
			break;

		case "november":
		case "nov":
			input = "11";
			break;

		case "december":
		case "dec":
			input = "12";
			break;
		}
		return input;
	}

	@Override
	public Integer getTotalTime(String username, Date date) {
		// TODO Auto-generated method stub
		return null;
	}
}
