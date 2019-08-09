package com.techelevator.model;

import java.sql.Date;
import java.sql.Time;
import java.time.LocalDate;


public class Classes {
	
	private int classId; 
	private String name; 
	private Time classStartTime;
	private Time classEndTime; 
	private Date classDate; 
	
	public int getClassId() {
		return classId;
	}
	public void setClassId(int classId) {
		this.classId = classId;
	}

	public String getName() {
		return name;
	}
	public void setName(String className) {
		this.name = className;
	}
	public Time getClassStartTime() {
		return classStartTime;
	}
	public void setClassStartTime(Time classStartTime) {
		this.classStartTime = classStartTime;
	}
	public Time getClassEndTime() {
		return classEndTime;
	}
	public void setClassEndTime(Time classEndTime) {
		this.classEndTime = classEndTime;
	}
	public Date getClassDate() {
		return classDate;
	}
	public void setClassDate(Date classDate) {
		this.classDate = classDate;
	}


	
	
	
}
