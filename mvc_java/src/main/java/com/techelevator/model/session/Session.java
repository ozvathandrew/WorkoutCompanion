package com.techelevator.model.session;

import java.sql.Time;

public class Session {
	
	private Integer sets;
	private Integer reps;
	private Integer weights;
	private Time start;
	private Time end;
	
	public Integer getSets() {
		return sets;
	}
	public void setSets(Integer sets) {
		this.sets = sets;
	}
	public Integer getReps() {
		return reps;
	}
	public void setReps(Integer reps) {
		this.reps = reps;
	}
	public Integer getWeights() {
		return weights;
	}
	public void setWeights(Integer weights) {
		this.weights = weights;
	}
	public Time getStart() {
		return start;
	}
	public void setStart(Time start) {
		this.start = start;
	}
	public Time getEnd() {
		return end;
	}
	public void setEnd(Time end) {
		this.end = end;
	}
	
	
}
