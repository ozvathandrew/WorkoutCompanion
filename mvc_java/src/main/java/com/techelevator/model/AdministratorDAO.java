package com.techelevator.model;

import java.util.List;

public interface AdministratorDAO {

	public void addEmployee(String userName, String password, String name, String email, String workoutGoals, String workoutProfile, String avatar);

	public List<User> getAllEmployees();
}
