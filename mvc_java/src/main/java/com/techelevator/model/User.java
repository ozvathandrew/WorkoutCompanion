package com.techelevator.model;

import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

public class User {
	
	private String userName;
	@Size(min = 10, message = "Password too short, must be at least 10")
	@Pattern.List({ @Pattern(regexp = ".*[a-z].*", message = "Must have a lower case"),
			@Pattern(regexp = ".*[A-Z].*", message = "Must have a capital") })
	private String password;
	private String roleId;
	private String confirmPassword;
	private String name;
	private String email;
	private String photo;
	private String workOutGoals;
	private String workOutProfile;
	
	//Getters and setters below this line---------------------------------------------------
	
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRoleId() {
		return roleId;
	}
	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}
	public String getConfirmPassword() {
		return confirmPassword;
	}
	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public String getWorkOutGoals() {
		return workOutGoals;
	}
	public void setWorkOutGoals(String workOutGoals) {
		this.workOutGoals = workOutGoals;
	}
	public String getWorkOutProfile() {
		return workOutProfile;
	}
	public void setWorkOutProfile(String workOutProfile) {
		this.workOutProfile = workOutProfile;
	}	
}
