<%-- 
    Document   : getStudent
    Created on : 10 Aug 2024, 15:19:14
    Author     : Admin
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>All Students</title>
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
        .students-card {
            background-color: #2e2e2e;
            border-radius: 20px;
            padding: 30px;
            width: 100%;
            max-width: 600px;
            color: #fff;
            box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.5);
        }
        .students-card h3 {
            margin-bottom: 20px;
            font-weight: bold;
            text-align: center;
        }
        .table {
            color: #fff;
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
    </style>
</head>
<body>
    <div class="students-card">
        <h3>All Students</h3>
        <table class="table table-dark table-striped">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Course</th>
                    <th>Mark</th>
                </tr>
            </thead>
            <tbody>
                <%
                    
                %>
                <tr>
                    <td><%= "id" %></td>
                    <td><%= "id" %></td>
                    <td><%= "id" %></td>
                    <td><%= "id" %></td>
                </tr>
               
                <tr>
                    <td colspan="4" class="text-center">No students available.</td>
                </tr>

            </tbody>
        </table>
        <button type="button" class="btn btn-primary" onclick="history.back();">Go Back</button>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

