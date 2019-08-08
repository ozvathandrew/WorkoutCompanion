package com.techelevator.model.equipment;

public class Equipment {
	
	private Integer equipment_id;
	private String name;
	private String bodyGroup;
	private String instruction;
	private String video;
	
	//getters and setters
	
	public String getBodyGroup() {
		return bodyGroup;
	}
	public Integer getEquipment_id() {
		return equipment_id;
	}
	public void setEquipment_id(Integer equipment_id) {
		this.equipment_id = equipment_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
