package com.techelevator.equipment;

public class LegPress extends Equipment {
	
	private String name;
	
	public LegPress(String name, Integer reps, Integer sets, Integer weights, String bodyGroup, String instruction, String video) {
		super(reps, sets, weights, bodyGroup, instruction, video);
		this.name = "Leg Press";
	}
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
}
