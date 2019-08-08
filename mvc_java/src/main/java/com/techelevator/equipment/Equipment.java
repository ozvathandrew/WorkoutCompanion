package com.techelevator.equipment;

public class Equipment {
	
	private Integer reps;
	private Integer sets;
	private Integer weights;
	private String bodyGroup;
	private String instruction;
	private String video;
	
	public Equipment(Integer reps, Integer sets, Integer weights, String bodyGroup, String instruction, String video) {
		this.reps = reps;
		this.sets = sets;
		this.weights = weights;
		this.bodyGroup = bodyGroup;
		this.instruction = instruction;
		this.video = video;
	}
	
	//getters and setters
	
	public Integer getReps() {
		return reps;
	}
	public void setReps(Integer reps) {
		this.reps = reps;
	}
	public Integer getSets() {
		return sets;
	}
	public void setSets(Integer sets) {
		this.sets = sets;
	}
	public Integer getWeights() {
		return weights;
	}
	public void setWeights(Integer weights) {
		this.weights = weights;
	}
	public String getBodyGroup() {
		return bodyGroup;
	}
	public void setBodyGroup(String bodyGroup) {
		this.bodyGroup = bodyGroup;
	}
	public String getInstruction() {
		return instruction;
	}
	public void setInstruction(String instruction) {
		this.instruction = instruction;
	}
	public String getVideo() {
		return video;
	}
	public void setVideo(String video) {
		this.video = video;
	}
}
