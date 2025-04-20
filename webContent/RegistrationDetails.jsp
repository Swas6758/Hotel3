<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Rooms</title>
<style>
    body {
        font-family: 'Arial', sans-serif;
        background-color: #f0f0f5;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        background-image: url('add-room-background.jpg');
        background-size: cover;
        background-position: center;
    }
    .container {
        background-color: rgba(255, 255, 255, 0.95);
        padding: 30px;
        border-radius: 15px;
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
        width: 400px;
    }
    h3 {
        text-align: center;
        color: #333;
        font-size: 24px;
        margin-bottom: 20px;
    }
    table {
        width: 100%;
    }
    td {
        padding: 10px;
        font-size: 16px;
        color: #555;
    }
    input[type="text"], input[type="date"], select {
        width: 100%;
        padding: 8px;
        margin-top: 5px;
        border: 1px solid #ccc;
        border-radius: 5px;
        font-size: 14px;
    }
    input[type="radio"] {
        margin-right: 5px;
    }
    input[type="submit"] {
        padding: 10px 20px;
        background: linear-gradient(109.6deg, rgb(6, 2, 2) 32.4%, rgb(137, 30, 47) 98.8%);
        color: white;
        border: none;
        border-radius: 5px;
        font-size: 16px;
        cursor: pointer;
        margin-top: 20px;
        width: 100%;
    }
    input[type="submit"]:hover {
        background-color: #45a049;
    }
    a {
        text-decoration: none;
        color: #1e90ff;
        display: block;
        text-align: center;
        margin-top: 20px;
    }
    a:hover {
        color: #0073e6;
    }
</style>
</head>
<body>
    <div class="container">
        <h3>Add Rooms</h3>
        <%=request.getAttribute("status")!=null?request.getAttribute("status"):"" %>
        <form action="<%= request.getContextPath() %>/MainController?actionVal=insert" method="post">
            <table>
                <tr>
                    <td>Room Id</td>
                    <td><input name="roomId" type="text"></td>
                </tr>
                <tr>
                    <td>Room Price</td>
                    <td><input name="roomPrice" type="text"></td>
                </tr>
                <tr>
                    <td>Room Type</td>
                    <td>
                        Ac <input type="radio" name="roomType" value="ac">
                        Non Ac <input type="radio" name="roomType" value="non ac">
                    </td>
                </tr>
                <tr>
                    <td>Date of Booking</td>
                    <td><input name="dob" type="date"></td>
                </tr>
                <tr>
                    <td>Availibility Status</td>
                    <td>
                        <select name="status">
                            <option value="Available">Available</option>
                            <option value="Not Available">Not Available</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center"><input type="submit" value="Save"></td>
                </tr>
            </table>
        </form>
        <a href="MainController?actionVal=fetchAll">View Rooms</a>
    </div>
</body>
</html>