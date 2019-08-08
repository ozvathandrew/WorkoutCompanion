package com.techelevator.model;

import java.time.LocalDate;


public class Classes {
	
	private int classId; 
	private String Name; 
	private LocalDate classTime;
	
	public int getClassId() {
		return classId;
	}
	public void setClassId(int classId) {
		this.classId = classId;
	}

	public String getName() {
		return Name;
	}
	public void setName(String className) {
		this.Name = className;
	}
	public LocalDate getClassTime() {
		return classTime;
	}
	public void setClassTime(LocalDate timestamp) {
		this.classTime = timestamp;
	}

	
	
	
}
