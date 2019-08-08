package com.techelevator.equipment;

public class PullUp extends Equipment {
	
	private String name;
	
	public PullUp(String name, Integer reps, Integer sets, Integer weights, String bodyGroup, String instruction, String video) {
		super(reps, sets, weights, bodyGroup, instruction, video);
		this.name = "Pull Up";
	}
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
}
