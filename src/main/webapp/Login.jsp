<%-- 
    Document   : Login
    Created on : 11 Aug 2024, 02:44:36
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Login Form</title>
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
            .login-card {
                background-color: #2e2e2e;
                border-radius: 20px;
                padding: 30px;
                width: 100%;
                max-width: 400px;
                color: #fff;
                box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.5);
            }
            .login-card h3 {
                margin-bottom: 20px;
                font-weight: bold;
                text-align: center;
            }
            .login-card p {
                text-align: center;
                color: #c2c2c2;
            }
            .form-control {
                background-color: transparent;
                border: 1px solid #555;
                color: #fff;
            }
            .form-control::placeholder {
                color: #c2c2c2;
            }
            .btn-primary {
                background-color: #555;
                border: none;
                width: 100%;
                padding: 10px;
                border-radius: 30px;
                font-weight: bold;
            }
            .forgot-password {
                text-align: center;
                margin: 10px 0;
                color: #c2c2c2;
            }
            .forgot-password a {
                color: #c2c2c2;
                text-decoration: none;
            }
            .social-login {
                text-align: center;
                margin-top: 20px;
            }
            .social-login a {
                margin: 0 10px;
                color: #fff;
                font-size: 20px;
                text-decoration: none;
            }
            .sign-up {
                text-align: center;
                margin-top: 20px;
                color: #c2c2c2;
            }
            .sign-up a {
                color: #fff;
                text-decoration: none;
                font-weight: bold;
            }
        </style>
    </head>
    <body>
        <form action="loginServlet" method="post">
            <div class="login-card">
                <h3>LOGIN</h3>
                <% if (request.getAttribute("errorLogin") == null) {%> 
                <p>Please enter your login and password!</p>
                <%} else {%> 
                <p><%= request.getAttribute("errorLogin")%></p>
                <%}%>
                <div class="form-group">
                    <input type="text" class="form-control" id="username" name="username" placeholder="Username" required>
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" id="password" name="password" placeholder="Password" required>
                </div>
                <div class="forgot-password">
                    <a href="#">Forgot password?</a>
                </div>
                <button type="submit" class="btn btn-primary">LOGIN</button>
                <div class="social-login">
                    <a href="#"><i class="fab fa-facebook-f"></i></a>
                    <a href="#"><i class="fab fa-twitter"></i></a>
                    <a href="#"><i class="fab fa-google"></i></a>
                </div>
                <div class="sign-up">
                    Don't have an account? <a href="/register">Sign Up</a>
                </div>
            </div>
        </form>
        <!-- Font Awesome for social media icons -->
        <script src="https://kit.fontawesome.com/a076d05399.js"></script>
        <!-- Bootstrap JS and dependencies -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>
</html>


