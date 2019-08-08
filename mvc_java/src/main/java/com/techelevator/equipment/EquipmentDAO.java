package com.techelevator.equipment;

import java.util.List;

public interface EquipmentDAO {
	
	public void saveSession();
	public List<Equipment> getAllSession();
}
