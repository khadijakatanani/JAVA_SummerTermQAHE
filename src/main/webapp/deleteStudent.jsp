<%-- 
    Document   : deleteStudent
    Created on : 25 Aug 2024, 23:14:42
    Author     : Admin
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Delete Student</title>
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
            /* CSS to apply to disabled inputs */
            .disabled-input {
                background-color: #e9ecef; /* Light gray background (Bootstrap default for disabled) */
                color: #6c757d; /* Gray text color */
                border: 1px solid #ced4da; /* Optional: standard border */
                opacity: 2; /* Ensure full opacity for better readability */
                font-weight: bold;
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
        <%
            if (request.getAttribute("deleted") != null) {%>
        <div class="student-card">
            <h3>Student deleted!</h3>
            <button type="button" class="btn btn-primary" onclick="window.location.href ='StudentMenu.jsp'">Go Back</button>
        </div>
        <%
            request.removeAttribute("deleted");
        } else {
        %> 

        <div class="student-card">
            <h3>Delete Student</h3>

            <!-- Form to input and filter by Student ID -->
            <form action="deleteStudent" method="get">
                <div class="form-group">
                    <label for="filterId">Enter Student ID</label>
                    <input type="text" class="form-control" id="filterId" 
                           value="<%= idParam%>" name="id" placeholder="Student ID" required>
                </div>
                <button type="submit" class="btn btn-primary">Fetch Student</button>
            </form>

            <br/>

            <!-- Form to edit student details -->
            <form action="deleteStudent" method="post">
                <!-- Assuming the student ID is passed as a hidden field -->
                <input type="hidden" name="studentId" value="<%= request.getParameter("id")%>">

                <div class="form-group">
                    <label for="name1">Name</label>                    
                    <input type="text" step="0.01" class="form-control disabled-input" id="name" name="name" 
                           value="<%= request.getAttribute("name") != null ? request.getAttribute("name") : ""%>" 
                           placeholder="Student name" required disabled>
                </div>
                <div class="form-group">
                    <label for="course">Course</label>
                    <input type="text" step="0.01" class="form-control disabled-input" id="course" name="course" 
                           value="<%= request.getAttribute("course") != null ? request.getAttribute("course") : ""%>" 
                           placeholder="Course name" required disabled>
                </div>
                <div class="form-group">
                    <label for="mark">Mark</label>
                    <input type="number" step="0.01" class="form-control disabled-input" id="mark" name="mark" 
                           value="<%= request.getAttribute("mark") != null ? request.getAttribute("mark") : ""%>" 
                           placeholder="Student's mark" required disabled>
                </div>
                <button type="submit" class="btn btn-primary">Delete Student</button>
            </form>
            <br>
            <!-- <a href="StudentMenu.jsp" class="btn-back">Back to Menu</a> -->            
            <button type="button" class="btn btn-primary" onclick="history.back();">Go Back</button>
        </div>

        <%}%>
        <!-- Bootstrap JS and dependencies -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>
</html>
