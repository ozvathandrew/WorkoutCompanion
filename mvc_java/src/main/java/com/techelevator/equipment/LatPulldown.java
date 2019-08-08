package com.techelevator.equipment;

public class LatPulldown extends Equipment {
	
	private String name;

	public LatPulldown(String name, Integer reps, Integer sets, Integer weights, String bodyGroup, String instruction, String video) {
		super(reps, sets, weights, bodyGroup, instruction, video);
		this.name = "Lat Pulldown";
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
}
