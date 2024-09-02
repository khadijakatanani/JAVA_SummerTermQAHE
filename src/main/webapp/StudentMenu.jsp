<%-- 
    Document   : StudentMenu
    Created on : 11 Aug 2024, 03:53:00
    Author     : Admin
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Student Management</title>
        <!-- Bootstrap CSS -->
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
        <style>
            body {
                height: 100vh;
                background: linear-gradient(135deg, #3a1c71, #d76d77, #ffaf7b);
                display: flex;
                justify-content: center;
                align-items: center;
                margin: 0;
            }
            .menu-card {
                background-color: #2e2e2e;
                border-radius: 20px;
                padding: 30px;
                width: 100%;
                max-width: 400px;
                color: #fff;
                box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.5);
                text-align: center;
            }
            .menu-card h3 {
                margin-bottom: 20px;
                font-weight: bold;
            }
            .menu-card .btn {
                background-color: #555;
                border: none;
                width: 100%;
                padding: 10px;
                border-radius: 30px;
                font-weight: bold;
                margin: 10px 0;
                color: #fff;
            }
            .menu-card .btn:hover {
                background-color: #444;
            }
            .welcome-message {
                position: absolute;
                top: 20px;
                right: 20px;
                font-weight: bold;
                font-size: 16px;
                color: #fff;
            }
        </style>
    </head>
    <body>
        <%
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // Http 1.1, and Http 2.0
            response.setHeader("Pragma", "no-cache"); // Http 1.0
            response.setHeader("Expires", "0"); // Proxies

        %>
        <%            
            boolean sessionActive = false;
            String username = (String) session.getAttribute("username");
            if (username != null) {
                sessionActive = true;
            }
        %>

        <!-- Welcome message in the top right corner -->
        <form action="logout" method="post">
            <div class="welcome-message">
                <a href="logout" style="color: #fff; text-decoration: underline;">
                    Welcome, <%= username%>
                </a>
            </div>
        </form>
        <div class="menu-card">
            <h3>Student Management</h3>
            <form action="#">
                <button type="button" class="btn" onclick="window.location.href = 'viewStudents'">View All Students</button>
                <button type="button" class="btn" onclick="window.location.href = 'addStudent.jsp'">Add a Student</button>
                <button type="button" class="btn" onclick="window.location.href = 'editStudent.jsp'">Edit a Student</button>
                <button type="button" class="btn" onclick="window.location.href = 'deleteStudent.jsp'">Delete a Student</button>
            </form>
        </div>

        <!-- Bootstrap JS and dependencies -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>
</html>

