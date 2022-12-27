package com.DAO;

import java.util.List;

import com.entity.RoomDtls;

public interface RoomDAO {
	public boolean addRooms (RoomDtls b);
	
	public List<RoomDtls> getAllRooms();
	
	public RoomDtls getRoomById(int id);
	
	
	
	public List<RoomDtls> getVipRoom();
	
	public List<RoomDtls> getRecentRoom();
	
	public List<RoomDtls> getType1Room();
	
	public List<RoomDtls> getType2Room();
	
}
