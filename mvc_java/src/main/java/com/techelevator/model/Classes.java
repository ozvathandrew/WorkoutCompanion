package com.techelevator.model;

import java.time.LocalDate;


public class Classes {
	
	private int classId; 
	private String name; 
	private LocalDate classTime;
	
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
	public LocalDate getClassTime() {
		return classTime;
	}
	public void setClassTime(LocalDate timestamp) {
		this.classTime = timestamp;
	}

	
	
	
}
