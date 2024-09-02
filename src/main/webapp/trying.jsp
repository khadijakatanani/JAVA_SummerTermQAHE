<%-- 
    Document   : trying
    Created on : 25 Aug 2024, 23:29:17
    Author     : Admin
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Employee List</title>
</head>
<body>
    <h1>Employee List</h1>
    <p><a href="${pageContext.request.contextPath}/employees/new">Add Employee</a></p>
    <table border="1">
        <thead>
            <tr>
                <th>ID</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Email</th>
                <th>Edit</th>
                <th>Delete</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="employee" items="${employees}">
                <tr>
                    <td>${employee.id}</td>
                    <td>${employee.firstName}</td>
                    <td>${employee.lastName}</td>
                    <td>${employee.email}</td>
                    <td><a href="${pageContext.request.contextPath}/employees/edit?id=${employee.id}">Edit</a></td>
                    <td>
                        <form method="post" action="${pageContext.request.contextPath}/employees">
                            <input type="hidden" name="_method" value="delete">
                            <input type="hidden" name="id" value="${employee.id}">
                            <button type="submit">Delete</button>
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
