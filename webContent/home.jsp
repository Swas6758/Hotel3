<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f7f7f7;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        background-image: url('hotel-background.jpg');
        background-size: cover;
        background-position: center;
    }
    h1 {
        color: black;;
        text-align: center;
        font-size: 36px;
        margin-bottom: 70px;
        text-shadow: 2px 2px 4px #ddd;
    }
    .container {
        background-color: rgba(255, 255, 255, 0.85);
        padding: 50px;
        border-radius: 15px;
        box-shadow: 0 6px 12px rgba(0, 0, 0, 0.3);
        text-align: center;
        width: 400px;
    }
    a {
        display: inline-block;
        margin: 15px;
        padding: 10px 20px;
        text-decoration: none;
        color: white;
        background: linear-gradient(109.6deg, rgb(6, 2, 2) 32.4%, rgb(137, 30, 47) 98.8%);
        border-radius: 30px;
        font-size: 18px;
        transition: background-color 0.3s ease;
    }
    a:hover {
        background-color:#6a0dad;
    }
</style>
</head>
<body>
    <div class="container">
        <h1>Welcome to Taj Hotel</h1>
        <form>
            <a href="adminLogin.jsp">Admin Login</a>
            <a href="customerLogin.jsp">Customer Login</a>
        </form>
    </div>
</body>
</html>