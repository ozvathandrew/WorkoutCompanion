package com.techelevator.model;

import java.sql.Time;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Component;

@Component
public interface ClassesDAO {
	
	public List<Classes> getClassesByClassName();
	
	public void updateClassSchedule(String userName, String workoutClassName, Time classStartTime, Time classEndTime, Date classDate);
	
//	public List<Classes> getMemberByClass(String userNameTest); 
	
}