package com.techelevator.equipment;

public class ShoulderPress extends Equipment {
	
	private String name;
	
	public ShoulderPress(String name, Integer reps, Integer sets, Integer weights, String bodyGroup, String instruction, String video) {
		super(reps, sets, weights, bodyGroup, instruction, video);
		this.name = "Shoulder Press";
	}
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
}
