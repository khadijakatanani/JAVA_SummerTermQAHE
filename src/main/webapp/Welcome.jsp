<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Welcome</title>
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
            .welcome-card {
                background-color: #2e2e2e;
                border-radius: 20px;
                padding: 30px;
                width: 100%;
                max-width: 400px;
                color: #fff;
                box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.5);
                text-align: center;
            }
            .welcome-card h3 {
                margin-bottom: 20px;
                font-weight: bold;
            }
            .welcome-card .btn {
                background-color: #555;
                border: none;
                width: 100%;
                padding: 10px;
                border-radius: 30px;
                font-weight: bold;
                margin: 10px 0;
                color: #fff;
            }
            .welcome-card .btn:hover {
                background-color: #444;
            }
        </style>
    </head>
    <body>
        <%
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // Http 1.1, and Http 2.0
            response.setHeader("Pragma", "no-cache"); // Http 1.0
            response.setHeader("Expires", "0"); // Proxies

        %>
        <div class="welcome-card">
            <h3>Welcome</h3>
            <p>Please choose an option:</p>
            <form action="viewStudents" method="get">
                <button type="button" class="btn" onclick="window.location.href = 'viewStudents'">View All Students</button>
                <button type="button" class="btn" onclick="window.location.href = 'Login.jsp'">Login</button>
            </form>
            
        </div>

        <!-- Bootstrap JS and dependencies -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>
</html>
