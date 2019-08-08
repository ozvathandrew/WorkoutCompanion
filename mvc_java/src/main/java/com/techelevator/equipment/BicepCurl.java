package com.techelevator.equipment;

public class BicepCurl extends Equipment {

	private String name;

	public BicepCurl(String name, Integer reps, Integer sets, Integer weights, String bodyGroup, String instruction,
			String video) {
		super(reps, sets, weights, bodyGroup, instruction, video);
		this.name = "Bicep Curl";
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	
}
