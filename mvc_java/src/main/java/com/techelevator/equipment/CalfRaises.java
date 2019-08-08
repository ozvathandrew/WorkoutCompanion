package com.techelevator.equipment;

public class CalfRaises extends Equipment {
	
	private String name;
	
	public CalfRaises(String name, Integer reps, Integer sets, Integer weights, String bodyGroup, String instruction, String video) {
		super(reps, sets, weights, bodyGroup, instruction, video);
		this.name = "Calf Raises";
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	

}
