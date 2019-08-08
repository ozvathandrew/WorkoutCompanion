package com.techelevator.equipment;

public class ChestPress extends Equipment {

	private String name;
	
	public ChestPress(String name, Integer reps, Integer sets, Integer weights, String bodyGroup, String instruction, String video) {
		super(reps, sets, weights, bodyGroup, instruction, video);
		this.name = "Chest Press";
	}
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

}
