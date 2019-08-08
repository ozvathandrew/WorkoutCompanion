package com.techelevator.model.session;

import java.util.List;

import org.springframework.stereotype.Component;

import com.techelevator.model.equipment.Equipment;

@Component
public interface SessionDAO {

	public void saveSession(Session session, Equipment equipment);
	
	public List<Session> getAllSessions();
}
