package com.techelevator.model.equipment;

public class Equipment {
	
	private String bodyGroup;
	private String instruction;
	private String video;
	
//	public Equipment(String bodyGroup, String instruction, String video) {
//		this.bodyGroup = bodyGroup;
//		this.instruction = instruction;
//		this.video = video;
//	}
	
	//getters and setters
	
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
