package com.techelevator.model.session;

import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.techelevator.model.equipment.Equipment;

@Component
public class JDBCSessionDAO implements SessionDAO {
	
	private JdbcTemplate jdbcTemplate;

	public void saveSession(Session session, Equipment equipment) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<Session> getAllSessions() {
		// TODO Auto-generated method stub
		return null;
	}
}
