package com.techelevator.model.equipment;

public class PowerAbsTower extends Equipment {
	
	private String name;
	private String bodyGroup;
	private String instruction;
	private String video;

	public PowerAbsTower(String name, String bodyGroup, String instruction, String video) {
		this.bodyGroup = "Abs";
		this.name = "Power Tower";
		this.instruction = "Don't power tower so hard";
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
