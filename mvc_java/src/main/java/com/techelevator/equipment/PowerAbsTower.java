package com.techelevator.equipment;

public class PowerAbsTower extends Equipment {
	
	private String name;
	
	public PowerAbsTower(String name, Integer reps, Integer sets, Integer weights, String bodyGroup, String instruction, String video) {
		super(reps, sets, weights, bodyGroup, instruction, video);
		this.name = "Power Abs Tower";
	}
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
}
