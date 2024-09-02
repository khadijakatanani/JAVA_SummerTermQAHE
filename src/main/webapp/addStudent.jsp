<%-- 
    Document   : addStudent
    Created on : 11 Aug 2024, 16:10:20
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body {
                height: 100vh;
                background: linear-gradient(135deg, #3a1c71, #d76d77, #ffaf7b);
                display: flex;
                justify-content: center;
                align-items: center;
                margin: 0;
            }
            .student-card {
                background-color: #2e2e2e;
                border-radius: 20px;
                padding: 30px;
                width: 100%;
                max-width: 400px;
                color: #fff;
                box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.5);
            }
            .student-card h3 {
                margin-bottom: 20px;
                font-weight: bold;
                text-align: center;
            }
            .form-group label {
                color: #c2c2c2;
            }
            .form-control {
                background-color: #555;
                color: #fff;
                border: 1px solid #777;
            }
            .form-control::placeholder {
                color: #bbb;
            }
            .btn-primary {
                background-color: #555;
                border: none;
                width: 100%;
                padding: 10px;
                border-radius: 30px;
                font-weight: bold;
            }
            .btn-primary:hover {
                background-color: #444;
            }
            .btn-back {
                background-color: #777;
                border: none;
                padding: 10px 20px;
                border-radius: 30px;
                font-weight: bold;
                color: #fff;
                text-align: center;
                display: block;
                margin: 20px auto;
                width: 100%;
                text-decoration: none;
            }
            .btn-back:hover {
                background-color: #666;
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
        <!-- Bootstrap CSS -->
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

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
        <div class="student-card">
            <h3>Add a Student</h3>
            <form action="addStudent" method="post">
                <div class="form-group">
                    <label for="name">Name</label>
                    <input type="text" class="form-control" id="name" name="name" placeholder="Enter student's name" required>
                </div>
                <div class="form-group">
                    <label for="course">Course</label>
                    <input type="text" class="form-control" id="course" name="course" placeholder="Enter course name" required>
                </div>
                <div class="form-group">
                    <label for="mark">Mark</label>
                    <input type="number" step="0.01" class="form-control" id="mark" name="mark" placeholder="Enter student's mark" required>
                </div>
                <button type="submit" class="btn btn-primary">Add Student</button>
            </form>
            <a href="StudentMenu.jsp" class="btn-back">Back to Menu</a>
        </div>

        <!-- Bootstrap JS and dependencies -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>
</html>



</body>
</html>
