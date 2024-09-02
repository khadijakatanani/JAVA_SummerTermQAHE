<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Edit Student</title>
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
        </style>
    </head>
    <body>
        <%
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // Http 1.1, and Http 2.0
            response.setHeader("Pragma", "no-cache"); // Http 1.0
            response.setHeader("Expires", "0"); // Proxies

        %>
        <%            boolean sessionActive = false;
            String username = (String) session.getAttribute("username");
            String idParam = request.getParameter("id");
            if (idParam == null) {
                idParam = "";
            }
            if (username != null) {
                sessionActive = true;
            }
        %>
        <div class="student-card">
            <h3>Edit Student</h3>

            <!-- Form to input and filter by Student ID -->
            <form action="editStudent" method="get">
                <div class="form-group">
                    <label for="filterId">Enter Student ID</label>
                    <input type="text" class="form-control" id="filterId" name="id"
                           value="<%= idParam%>" placeholder="Student ID" required>
                </div>
                <button type="submit" class="btn btn-primary">Fetch Student</button>
            </form>

            <br/>

            <!-- Form to edit student details -->
            <form action="editStudent" method="post">
                <!-- Assuming the student ID is passed as a hidden field -->
                <input type="hidden" name="studentId" value="<%= request.getParameter("id")%>">

                <div class="form-group">
                    <label for="name">Name</label>
                    <input type="text" class="form-control" id="name" name="name" 
                           value="<%= request.getAttribute("name") != null ? request.getAttribute("name") : ""%>" 
                           placeholder="Enter student's name" required>
                </div>
                <div class="form-group">
                    <label for="name">Surname</label>
                    <input type="text" class="form-control" id="surname" name="surname" 
                           value="<%= request.getAttribute("surname") != null ? request.getAttribute("surname") : ""%>" 
                           placeholder="Enter student's surname" required>
                </div>
                <div class="form-group">
                    <label for="course">Course</label>
                    <input type="text" class="form-control" id="course" name="course" 
                           value="<%= request.getAttribute("course") != null ? request.getAttribute("course") : ""%>" 
                           placeholder="Enter course name" required>
                </div>
                <div class="form-group">
                    <label for="mark">Mark</label>
                    <input type="number" step="0.01" class="form-control" id="mark" name="mark" 
                           value="<%= request.getAttribute("mark") != null ? request.getAttribute("mark") : ""%>" 
                           placeholder="Enter student's mark" required>
                </div>
                <button type="submit" class="btn btn-primary">Update Student</button>
            </form>
            <br>
            <!-- <a href="StudentMenu.jsp" class="btn-back">Back to Menu</a> -->            
            <button type="button" class="btn btn-primary" onclick="history.back();">Go Back</button>
        </div>

        <!-- Bootstrap JS and dependencies -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>
</html>
