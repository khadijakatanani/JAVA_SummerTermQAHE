<%-- 
    Document   : ViewStudents
    Created on : 11 Aug 2024, 05:14:21
    Author     : Admin
--%>

<%@page import="DAO.StudentDAOImpl"%>
<%@page import="java.util.List"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.Iterator"%>
<%@page import="DAO.StudentDAO"%>
<%@ page import="Entities.Student" %>  <!-- Adjust the package as per your setup -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>View All Students</title>
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
                padding: 20px;
            }
            .student-card {
                background-color: #2e2e2e;
                border-radius: 20px;
                padding: 20px;
                color: #fff;
                box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.5);
                width: 100%;
                max-width: 800px;
            }
            .student-card h3 {
                margin-bottom: 20px;
                font-weight: bold;
                text-align: center;
            }
            .student-table th, .student-table td {
                color: #fff;
                border: 1px solid #555;
                padding: 10px;
                text-align: center;
            }
            .student-table th {
                background-color: #444;
            }
            .btn-back {
                background-color: #555;
                border: none;
                padding: 10px 20px;
                border-radius: 30px;
                font-weight: bold;
                color: #fff;
                text-align: center;
                display: block;
                margin: 20px auto;
            }
            .btn-back:hover {
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
        <%            boolean sessionActive = false;
            String username = (String) session.getAttribute("username");
            if (username != null) {
                sessionActive = true;
            }
        %>

        <!-- Welcome message in the top right corner -->
        <form action="logout" method="post">
            <div class="welcome-message">
                <% if (sessionActive) {%>
                <a href="logout" style="color: #fff; text-decoration: underline;">
                    Welcome, <%= username%>
                </a>
                <% } else {%>
                <a href="Login.jsp" style="color: #fff; text-decoration: underline;">
                    Login
                </a>

                <% } %>
            </div>
        </form>

        <div class="student-card">
            <h3>All Students</h3>
            <table class="table student-table">
                <thead>
                    <tr>                        
                        <% if (sessionActive) {%><th>Student ID</th> <%}%>
                        <th>Name</th>
                        <th>Surname</th>
                        <th>Course</th>
                        <th>Mark</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        List<Student> studentList = (List<Student>)request.getAttribute("studentList");
                        for (Student eachStudent : studentList) {
                    %>
                    <tr>
                        <% if (sessionActive) {%>
                        <td><a href="editStudent?id=<%= eachStudent.getId()%>"><%= eachStudent.getId()%></a></td>
                            <%}%>
                        <td><%= eachStudent.getName() %></td>
                        <td><%= eachStudent.getSurname() %></td>
                        <td><%= eachStudent.getCourse() %></td>
                        <td><%= eachStudent.getMark() %></td>
                    </tr>
                    <%
                        }
                    %>

                </tbody>
            </table>
            <a href="javascript:void(0);" class="btn-back" onclick="window.history.back();">Back</a>
        </div>

        <!-- Bootstrap JS and dependencies -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>
</html>

