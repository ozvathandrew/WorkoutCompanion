package com.techelevator.model;

import java.util.List;

public interface UserDAO {

	public void saveMember(String userName, String password, String name, String email, String workoutGoals, String workoutProfile, String avatar);

	public boolean searchForUsernameAndPassword(String userName, String password);

	public void updatePassword(String userName, String password);

	public Object getUserByUserName(String userName);
	
	public List<User> getAllProfileMembers();
}
