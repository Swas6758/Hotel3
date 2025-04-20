package com.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.beans.RoomDetails;
import com.service.RoomService;
import com.utility.Utility;

@WebServlet("/MainController")
public class MainController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public MainController() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("actionVal");
		RoomService roomService = new RoomService();
		if(action.equals("insert"))
		{
			int roomId = Integer.parseInt(request.getParameter("roomId"));
			String roomPrice = request.getParameter("roomPrice");
			String roomType = request.getParameter("roomType");
			java.sql.Date dob = Utility.convertStringToSQLDate(request.getParameter("dob"));
			String status = request.getParameter("status");
			
			RoomDetails room = new RoomDetails(roomId, roomPrice, roomType, dob, status);
			int rowsAffected = roomService.registerRoom(room);
			if(rowsAffected!=0)
			{
				request.setAttribute("status", "<font color=blue>Insert Successful</font>");
			}
			else
			{
				request.setAttribute("status", "<font color=red>Insert Unsuccessful</font>");
			}
			RequestDispatcher rd = request.getRequestDispatcher("RegistrationDetails.jsp");
			rd.forward(request, response);
		}
		else if(action.equals("fetchAll"))
		{
			ArrayList<RoomDetails> roomList = roomService.fetchAllRooms();
			request.setAttribute("roomList", roomList);
			RequestDispatcher rd = request.getRequestDispatcher("FetchDetails.jsp");
			rd.forward(request, response);
		}
		else if(action.equals("updateFetch"))
		{
			request.setAttribute("roomId", request.getParameter("roomid"));
			request.setAttribute("roomPrice", request.getParameter("roomPrice"));
			request.setAttribute("roomType", request.getParameter("roomType"));
			request.setAttribute("dob", request.getParameter("dob"));
			request.setAttribute("status", request.getParameter("status"));
			
			RequestDispatcher rd = request.getRequestDispatcher("UpdateDetails.jsp");
			rd.forward(request, response);
		}
		else if(action.equals("updateConfirm"))
		{
			int roomId = Integer.parseInt(request.getParameter("roomId"));
			String roomPrice = request.getParameter("roomPrice");
			String roomType = request.getParameter("roomType");
			java.sql.Date dob = Utility.convertStringToSQLDate(request.getParameter("dob"));
			String status = request.getParameter("status");
			
			RoomDetails room = new RoomDetails(roomId, roomPrice, roomType, dob, status);
			int rowsAffected = roomService.updateRoomByRoomId(room);
			if(rowsAffected!=0)
			{
				request.setAttribute("updateStatus", "<font color=blue>Update Successful</font>");
			}
			else
			{
				request.setAttribute("updateStatus", "<font color=red>Update Unsuccessful</font>");
			}
			
			ArrayList<RoomDetails> roomList = roomService.fetchAllRooms();
			request.setAttribute("roomList", roomList);
			RequestDispatcher rd = request.getRequestDispatcher("FetchDetails.jsp");
			rd.forward(request, response);
			
		}
		else if(action.equals("delete"))
		{
			int roomId = Integer.parseInt(request.getParameter("roomid"));
			int rowsAffected = roomService.deleteRoomByRoomId(roomId);
			if(rowsAffected!=0)
			{
				request.setAttribute("deletestatus", "<font color=blue>Delete Successful</font>");
			}
			else
			{
				request.setAttribute("deletestatus", "<font color=red>Delete Unsuccessful</font>");
			}
			ArrayList<RoomDetails> roomList = roomService.fetchAllRooms();
			request.setAttribute("roomList", roomList);
			RequestDispatcher rd = request.getRequestDispatcher("FetchDetails.jsp");
			rd.forward(request, response);
		}
	}

}
