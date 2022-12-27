package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


import com.entity.RoomDtls;

public class RoomDAOImpl implements RoomDAO{

	private Connection conn;

	public RoomDAOImpl(Connection conn) {
		super();
		this.conn = conn;
	}



	@Override
	public boolean addRooms(RoomDtls b) {
		boolean f = false;
		try {
			String sql = "insert into room_dtls (roomnumber,price,roomtype,status,photo) values(?,?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, b.getRoomNuber());
			ps.setString(2, b.getPrice());
			ps.setString(3, b.getRoomType());
			ps.setString(4, b.getStatus());
			ps.setString(5, b.getPhotoName());
			
			int i = ps.executeUpdate();
			
			if (i == 1) {
				f=true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}



	@Override
	public List<RoomDtls>  getAllRooms() {
		List<RoomDtls> list = new ArrayList<RoomDtls>();
		RoomDtls b = null;
		try {
			String sql = "SELECT * FROM `hotel-app`.room_dtls";
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				b = new RoomDtls();
				b.setRoomId(rs.getInt(1));
				b.setRoomNuber(rs.getString(2));
				b.setPrice(rs.getString(3));
				b.setStatus(rs.getString(4));
				b.setPhotoName(rs.getString(5));
				list.add(b);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	
		return list;
	}



	@Override
	public RoomDtls getRoomById(int id) {
		RoomDtls b = null;
		try {
			String sql = "SELECCT * FROM room_dtls where roomId=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs  = ps.executeQuery();
			while(rs.next()) {
				b = new RoomDtls();
				b.setRoomId(rs.getInt(1));
				b.setRoomNuber(rs.getString(2));
				b.setPrice(rs.getString(3));
				b.setRoomType(rs.getString(4));
				b.setStatus(rs.getString(5));
				b.setPhotoName(rs.getString(6));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return b;
	}



	@Override
	public List<RoomDtls> getVipRoom() {
		List<RoomDtls> list = new ArrayList<RoomDtls>();
		RoomDtls b = new RoomDtls();
		try {
			String sql = "select * from room_dtls  where roomtype=? and status=? order by roomid DESC";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, "Vip");
			ps.setString(2, "Active");
			ResultSet rs = ps.executeQuery();
			int i = 1;
			while (rs.next() && i <= 4) {
				b = new RoomDtls();
				b.setRoomId(rs.getInt(1));
				b.setRoomNuber(rs.getString(2));
				b.setPrice(rs.getString(3));
				b.setRoomType(rs.getString(4));
				b.setStatus(rs.getString(5));
				b.setPhotoName(rs.getString(6));
				list.add(b);
				i++;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}



	@Override
	public List<RoomDtls> getRecentRoom() {
		List<RoomDtls> list = new ArrayList<RoomDtls>();
		RoomDtls b = new RoomDtls();
		try {
			String sql = "select * from room_dtls  where status=? order by roomid DESC";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, "Active");
			ResultSet rs = ps.executeQuery();
			int i = 1;
			while (rs.next() && i <= 4) {
				b = new RoomDtls();
				b.setRoomId(rs.getInt(1));
				b.setRoomNuber(rs.getString(2));
				b.setPrice(rs.getString(3));
				b.setRoomType(rs.getString(4));
				b.setStatus(rs.getString(5));
				b.setPhotoName(rs.getString(6));
				list.add(b);
				i++;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}



	@Override
	public List<RoomDtls> getType1Room() {
		List<RoomDtls> list = new ArrayList<RoomDtls>();
		RoomDtls b = new RoomDtls();
		try {
			String sql = "select * from room_dtls  where roomtype=? and status=? order by roomid DESC";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, "Type1");
			ps.setString(2, "Active");
			ResultSet rs = ps.executeQuery();
			int i = 1;
			while (rs.next() && i <= 4) {
				b = new RoomDtls();
				b.setRoomId(rs.getInt(1));
				b.setRoomNuber(rs.getString(2));
				b.setPrice(rs.getString(3));
				b.setRoomType(rs.getString(4));
				b.setStatus(rs.getString(5));
				b.setPhotoName(rs.getString(6));
				list.add(b);
				i++;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}



	@Override
	public List<RoomDtls> getType2Room() {
		List<RoomDtls> list = new ArrayList<RoomDtls>();
		RoomDtls b = new RoomDtls();
		try {
			String sql = "select * from room_dtls  where roomtype=? and status=? order by roomid DESC";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, "Type2");
			ps.setString(2, "Active");
			ResultSet rs = ps.executeQuery();
			int i = 1;
			while (rs.next() && i <= 4) {
				b = new RoomDtls();
				b.setRoomId(rs.getInt(1));
				b.setRoomNuber(rs.getString(2));
				b.setPrice(rs.getString(3));
				b.setRoomType(rs.getString(4));
				b.setStatus(rs.getString(5));
				b.setPhotoName(rs.getString(6));
				list.add(b);
				i++;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}
	

	
	
}
