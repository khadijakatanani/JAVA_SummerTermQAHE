<%-- 
    Document   : getStudent
    Created on : 10 Aug 2024, 18:12:02
    Author     : Admin
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Find Student</title>
    <!-- Bootstrap CSS for styling -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-5">
        <h1>Find Student by ID</h1>
        <form action="getStudent_" method="post" class="form-inline">
            <div class="form-group mx-sm-3 mb-2">
                <label for="studentId" class="sr-only">Student ID</label>
                <input type="text" class="form-control" id="studentId" name="id" placeholder="Enter Student ID" required>
            </div>
            <button type="submit" class="btn btn-primary mb-2">Search</button>
        </form>

        <div class="mt-4">
            <%
                String studentName = (String) request.getAttribute("studentName");
                String studentId = (String) request.getAttribute("studentId");

                if (studentName != null) {
            %>
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Student ID: <%= studentId %></h5>
                        <p class="card-text">Name: <%= studentName %></p>
                    </div>
                </div>
            <%
                } else if (studentId != null) {
            %>
                <div class="alert alert-danger" role="alert">
                    No student found with ID: <%= studentId %>
                </div>
            <%
                }
            %>
        </div>
    </div>
    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

