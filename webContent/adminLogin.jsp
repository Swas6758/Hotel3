<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login</title>
<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background-color: #e6e6fa;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        background-image: url('admin-background.jpg');
        background-size: cover;
        background-position: center;
    }
    .container {
        background-color: rgba(255, 255, 255, 0.95);
        padding: 60px;
        border-radius: 20px;
        box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
        width: 400px;
        text-align: center;
    }
    h1 {
        color:black;
        font-size: 30px;
        margin-bottom: 40px;
        font-weight: bold;
        text-shadow: 2px 2px 4px #dcdcdc;
    }
    form {
        display: flex;
        flex-direction: column;
        align-items: center;
    }
    input[type="text"], input[type="password"] {
        width: 95%;
        padding: 12px;
        margin: 12px 0;
        border: 1px solid #4B0082;
        border-radius: 8px;
        font-size: 16px;
        background-color: #f3f3f3;
    }
    input[type="submit"] {
        width: 30%;
        padding: 12px;
        margin-top: 25px;
        color: white;
        background: linear-gradient(109.6deg, rgb(6, 2, 2) 32.4%, rgb(137, 30, 47) 98.8%);
        border: none;
        border-radius: 30px;
        font-size: 18px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }
    input[type="submit"]:hover {
        background-color: #6a0dad;
    }
</style>
</head>
<body>
    <div class="container">
        <h1>Admin Login</h1>
        <form action="LoginServlet" method="post">
            <input type="text" name="username" placeholder="Admin ID" required>
            <input type="password" name="Password" placeholder="Admin Password" required>
            <input type="submit" value="Login">
        </form>
    </div>
</body>
</html>