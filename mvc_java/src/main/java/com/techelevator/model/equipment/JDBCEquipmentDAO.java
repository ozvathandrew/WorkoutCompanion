package com.techelevator.model.equipment;

import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;

public class JDBCEquipmentDAO implements EquipmentDAO {
	
	private JdbcTemplate jdbcTemplate;

	@Override
	public void saveEquipment(Equipment equipment) {
		String sqlSaveEquipment = "";
		jdbcTemplate.update(sqlSaveEquipment);
		
	}

	@Override
	public List<Equipment> getAllEquipments() {
		// TODO Auto-generated method stub
		return null;
	}

}
