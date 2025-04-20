<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Room Details Updation</title>
<style>
    body {
        font-family: 'Arial', sans-serif;
        background-color: #e9ecef;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        background-image: url('room-update-background.jpg');
        background-size: cover;
        background-position: center;
    }
    .container {
        background-color: rgba(255, 255, 255, 0.9);
        padding: 40px;
        border-radius: 12px;
        box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
        width: 400px;
    }
    h3 {
        text-align: center;
        font-size: 22px;
        color: #333;
        margin-bottom: 20px;
        font-weight: 600;
    }
    table {
        width: 100%;
        margin: 0 auto;
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
        background-color: #0056b3;
    }
    a {
        text-decoration: none;
        color: #007bff;
        text-align: center;
        display: block;
        margin-top: 20px;
    }
    a:hover {
        color: #0056b3;
    }
</style>
</head>
<body>
    <div class="container">
        <h3>Room Details Updation</h3>
        <form action="<%=request.getContextPath()%>/MainController?actionVal=updateConfirm" method="post">
            <table>
                <tr>
                    <td>Room Id</td>
                    <td><input name="roomId" type="text" value="<%=(String) request.getAttribute("roomId")%>" readonly></td>
                </tr>
                <tr>
                    <td>Room Price</td>
                    <td><input name="roomPrice" type="text" value="<%=(String) request.getAttribute("roomPrice")%>"></td>
                </tr>
                <tr>
                    <td>Room Type</td>
                    <td>
                        <% String roomType = (String) request.getAttribute("roomType"); %>
                        Ac <input type="radio" name="roomType" value="ac" <%=roomType.equals("ac")?"checked":""%>>
                        Non Ac <input type="radio" name="roomType" value="non ac" <%=roomType.equals("non ac")?"checked":""%>>
                    </td>
                </tr>
                <tr>
                    <td>Date of Booking</td>
                    <td><input name="dob" type="date" value="<%=(String) request.getAttribute("dob")%>"></td>
                </tr>
                <tr>
                    <td>Availibility Status</td>
                    <td>
                        <% String availibilityStatus = (String) request.getAttribute("status");%>
                        <select name="status">
                            <option value="Available" <%=availibilityStatus.equals("Available")?"selected":""%>>Available</option>
                            <option value="Not Available" <%=availibilityStatus.equals("Not Available")?"selected":""%>>Not Available</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center"><input type="submit" value="Save"></td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>