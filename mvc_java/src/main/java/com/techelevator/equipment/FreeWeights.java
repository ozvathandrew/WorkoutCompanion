package com.techelevator.equipment;

public class FreeWeights extends Equipment {
	
	private String name;
	
	public FreeWeights(String name, Integer reps, Integer sets, Integer weights, String bodyGroup, String instruction, String video) {
		super(reps, sets, weights, bodyGroup, instruction, video);
		this.name = "Free Weights";
	}
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
}
