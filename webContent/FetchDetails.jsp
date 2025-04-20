<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*,com.beans.*,java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Room Details</title>
<style>
    body {
        font-family: 'Arial', sans-serif;
        background-color: #f8f9fa;
        margin: 0;
        padding: 20px;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }
    .container {
        background-color: white;
        padding: 30px;
        border-radius: 8px;
        box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
        max-width: 900px;
        width: 100%;
    }
    h1 {
        text-align: center;
        font-size: 24px;
        color: #343a40;
        margin-bottom: 20px;
    }
    table {
        width: 100%;
        border-collapse: collapse;
    }
    table, th, td {
        border: 1px solid #dee2e6;
    }
    th, td {
        padding: 12px;
        text-align: center;
        font-size: 16px;
        color: #495057;
    }
    th {
        background: linear-gradient(109.6deg, rgb(6, 2, 2) 32.4%, rgb(137, 30, 47) 98.8%);
        color: white;
        text-transform: uppercase;
    }
    tr:nth-child(even) {
        background-color: #f2f2f2;
    }
    a {
        text-decoration: none;
        color: #007bff;
        font-weight: bold;
    }
    a:hover {
        color: #0056b3;
    }
</style>
</head>
<body>
    <div class="container">
        <h1>Room Details</h1>
        <%=request.getAttribute("updateStatus")!=null?request.getAttribute("updateStatus"):"" %>
        <%=request.getAttribute("deletestatus")!=null?request.getAttribute("deletestatus"):"" %>
        <%
            SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-YYYY");
            ArrayList<RoomDetails> roomList = (ArrayList<RoomDetails>)request.getAttribute("roomList");
        %>
        <table>
            <tr>
                <th>Room Id</th>
                <th>Room Price</th>
                <th>Room Type</th>
                <th>DOB</th>
                <th>Availibility Status</th>
                <th>Edit</th>
                <th>Delete</th>
            </tr>
            <%
                for(RoomDetails room : roomList) {
            %>
            <tr>
                <td><%= room.getRoomid() %></td>
                <td><%= room.getPrice() %></td>
                <td><%= room.getRoomType() %></td>
                <td><%=formatter.format(room.getDob()) %></td>
                <td><%= room.getAvailibilitystatus() %></td>
                <td><a href="MainController?actionVal=updateFetch&roomid=<%=room.getRoomid()%>&roomPrice=<%=room.getPrice()%>&roomType=<%=room.getRoomType()%>&dob=<%=room.getDob()%>&status=<%=room.getAvailibilitystatus()%>">Edit</a></td>
                <td><a href="MainController?actionVal=delete&roomid=<%=room.getRoomid()%>">Delete</a></td>
            </tr>
            <% } %>
        </table>
    </div>
</body>
</html>