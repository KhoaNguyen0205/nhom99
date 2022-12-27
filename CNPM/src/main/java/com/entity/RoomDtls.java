package com.entity;

public class RoomDtls {
	private int roomId;
	private String roomNuber;
	private String price;
	private String roomType;
	private String status;
	private String photoName;
	public RoomDtls() {
		super();
		// TODO Auto-generated constructor stub
	}
	public RoomDtls(String roomNuber, String price, String roomType, String status, String photoName) {
		super();
		this.roomNuber = roomNuber;
		this.price = price;
		this.roomType = roomType;
		this.status = status;
		this.photoName = photoName;
	}
	public int getRoomId() {
		return roomId;
	}
	public void setRoomId(int roomId) {
		this.roomId = roomId;
	}
	public String getRoomNuber() {
		return roomNuber;
	}
	public void setRoomNuber(String roomNuber) {
		this.roomNuber = roomNuber;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getRoomType() {
		return roomType;
	}
	public void setRoomType(String roomType) {
		this.roomType = roomType;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getPhotoName() {
		return photoName;
	}
	public void setPhotoName(String photoName) {
		this.photoName = photoName;
	}
	@Override
	public String toString() {
		return "RoomDtls [roomId=" + roomId + ", roomNuber=" + roomNuber + ", price=" + price + ", roomType=" + roomType
				+ ", status=" + status + ", photoName=" + photoName + "]";
	}
	
	

}
