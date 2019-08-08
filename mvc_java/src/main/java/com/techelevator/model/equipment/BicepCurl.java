package com.techelevator.model.equipment;

public class BicepCurl extends Equipment {

	private String name;
	private String bodyGroup;
	private String instruction;
	private String video;
	

	public BicepCurl(String name, String bodyGroup, String instruction,
			String video) {
		this.bodyGroup = "arms";
		this.name = "Bicep Curl";
		this.instruction = "Don't curl so hard";
		this.video = "/video/url";
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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
