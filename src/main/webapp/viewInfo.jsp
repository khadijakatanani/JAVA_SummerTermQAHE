<%-- 
    Document   : viewInfo
    Created on : 10 Aug 2024, 22:03:45
    Author     : Admin
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>View User Information</title>
        <!-- Bootstrap CSS for styling -->
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <div class="container mt-5">
            <h1>User Information</h1>

            <h2>Session Information:</h2>
            <%
                // Retrieve the session attribute
                String usernameSession = (String) session.getAttribute("username");

                if (usernameSession != null) {
            %>
            <p>Session Username: <%= usernameSession%></p>
            <%
            } else {
            %>
            <p>No user session found.</p>
            <%
                }
            %>

            <h2>Cookie Information:</h2>
            <%
                // Retrieve cookies from the request
                Cookie[] cookies = request.getCookies();
                String usernameCookie = null;

                if (cookies != null) {
                    for (Cookie cookie : cookies) {
                        if (cookie.getName().equals("username")) {
                            usernameCookie = cookie.getValue();
                            break;
                        }
                    }
                }

                if (usernameCookie != null) {
            %>
            <p>Cookie Username: <%= usernameCookie%></p>
            <%
            } else {
            %>
            <p>No user information found in cookies.</p>
            <%
                }
            %>

            <%!
                String greeting;

                public String getter() {

                    greeting = "hellooo";
                    return greeting;
                }

            %>
            <%= getter()%>
        </div>
        <!-- Bootstrap JS and dependencies -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>
</html>
