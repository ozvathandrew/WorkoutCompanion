package com.techelevator.model.equipment;

import java.util.ArrayList;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;

public class JDBCEquipmentDAO implements EquipmentDAO {
	
	private JdbcTemplate jdbcTemplate;

	@Override
	public void addEquipment(Equipment equipment) {
		String sqlSaveEquipment = "INSERT INTO equipment (equipment_name, equipment_description, equipment_video, muscle_group)"
				+ " VALUES (?, ?, ?, ?)";
		jdbcTemplate.update(sqlSaveEquipment, equipment.getName(), equipment.getDescription(), equipment.getVideo(), equipment.getMuscleGroup());		
	}

	@Override
	public List<Equipment> getAllEquipments() {
		List<Equipment> allEquipmentList = new ArrayList<Equipment>();
		String equipments = "SELECT * FROM equipment";	
		SqlRowSet results = jdbcTemplate.queryForRowSet(equipments);
		while(results.next()) {
			allEquipmentList.add(mapToRowEquipment(results));
		}
		return allEquipmentList;
	}
	
	private Equipment mapToRowEquipment(SqlRowSet row) {
		Equipment equipment = new Equipment();
		equipment.setName(row.getString("equipment_name"));
		equipment.setDescription(row.getString("equipment_description"));
		equipment.setVideo(row.getString("equipment_video"));
		equipment.setMuscleGroup(row.getString("muscle_group"));
		
		return equipment;
	}

}
