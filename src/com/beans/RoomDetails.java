package com.beans;

import java.sql.Date;

public class RoomDetails {
	
	private int roomid;
	private String price;
	private String roomType;
	private java.sql.Date dob;
	private String availibilitystatus;
	

	public RoomDetails(int roomid, String price, String roomType, Date dob, String availibilitystatus) {
		this.roomid = roomid;
		this.price = price;
		this.roomType = roomType;
		this.dob = dob;
		this.availibilitystatus = availibilitystatus;
	}


	public int getRoomid() {
		return roomid;
	}


	public String getPrice() {
		return price;
	}


	public String getRoomType() {
		return roomType;
	}


	public java.sql.Date getDob() {
		return dob;
	}


	public String getAvailibilitystatus() {
		return availibilitystatus;
	}


	public void setRoomid(int roomid) {
		this.roomid = roomid;
	}


	public void setPrice(String price) {
		this.price = price;
	}


	public void setRoomType(String roomType) {
		this.roomType = roomType;
	}


	public void setDob(java.sql.Date dob) {
		this.dob = dob;
	}


	public void setAvailibilitystatus(String availibilitystatus) {
		this.availibilitystatus = availibilitystatus;
	}

	

}

	