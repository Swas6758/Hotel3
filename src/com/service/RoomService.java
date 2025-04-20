package com.service;

import java.util.ArrayList;

import com.beans.RoomDetails;
import com.dao.RoomDAO;

public class RoomService {
	
	RoomDAO roomDAO = new RoomDAO();
	public int registerRoom(RoomDetails room)
	{
		return roomDAO.registerRoom(room);
	}
	public ArrayList<RoomDetails> fetchAllRooms()
	{
		return roomDAO.fetchAllRoom();
	}
	public int updateRoomByRoomId(RoomDetails room)
	{
		return roomDAO.updateRoomByRoomId(room);
	}
	public int deleteRoomByRoomId(int roomid)
	{
		return roomDAO.deleteRoomByRoomId(roomid);
	}
}
