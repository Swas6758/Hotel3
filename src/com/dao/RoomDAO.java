package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.beans.RoomDetails;
import com.utility.DbUtility;

public class RoomDAO {
	
	public int registerRoom(RoomDetails room)
	{
		DbUtility db = new DbUtility();
		Connection conn = db.connectDB();
		PreparedStatement ps = null;
		String sql = "insert into Room(roomId, price, roomType, dob, availibilityStatus) values(?,?,?,?,?)";
		int rowsAffected = 0;
		try
		{
			ps = conn.prepareStatement(sql);
			ps.setInt(1, room.getRoomid());
			ps.setString(2, room.getPrice());
			ps.setString(3, room.getRoomType());
			ps.setDate(4, room.getDob());
			ps.setString(5, room.getAvailibilitystatus());
			
			rowsAffected = ps.executeUpdate();
			conn.commit();
			
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		finally
		{
			db.closeStatement(ps);
			db.closeConnection(conn);
		}
		
		return rowsAffected;
	}
	
	public ArrayList<RoomDetails> fetchAllRoom()
	{
		DbUtility db = new DbUtility();
		Connection conn = db.connectDB();
		PreparedStatement ps = null;
		ResultSet rs = null;
		ArrayList<RoomDetails> roomList = new ArrayList<RoomDetails>();
		String sql = "select * from Room";
		try {
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next())
			{
				roomList.add(new RoomDetails(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getDate(4),rs.getString(5)));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally
		{
			db.closeStatement(ps);
			db.closeConnection(conn);
		}
		return roomList;
	}
	
	public int updateRoomByRoomId(RoomDetails room)
	{

		DbUtility db = new DbUtility();
		Connection conn = db.connectDB();
		PreparedStatement ps = null;
		int rowsAffected = 0;
		String sql = "update Room set price=?,roomType=?,dob=?,availibilityStatus=? where roomId=?";
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, room.getPrice());
			ps.setString(2, room.getRoomType());
			ps.setDate(3, room.getDob());
			ps.setString(4, room.getAvailibilitystatus());
			ps.setInt(5, room.getRoomid());
			
			rowsAffected = ps.executeUpdate();
			conn.commit();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			db.closeStatement(ps);
			db.closeConnection(conn);
		}
		return rowsAffected;
	}
	
	public int deleteRoomByRoomId(int roomid)
	{
		DbUtility db = new DbUtility();
		Connection conn = db.connectDB();
		PreparedStatement ps = null;
		int rowsAffected = 0;
		String sql = "delete from Room where roomId=?";
		try {
			ps = conn.prepareStatement(sql);
			ps.setInt(1, roomid);
			
			rowsAffected = ps.executeUpdate();
			conn.commit();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			db.closeStatement(ps);
			db.closeConnection(conn);
		}
		return rowsAffected;
	}
}
