<%-- 
    Document   : Login
    Created on : Mar 11, 2026, 12:56:47 PM
    Author     : tan_b
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/login.css" />
        <title>Login</title>
    </head>
    <body>
        <form action="Login" method="post">
            <h1>English Center System</h1>
            <table>
                <div>
                    <label>Username:</label>
                    <input type="text" name="username" value="${user}">
                </div>

                <div>
                    <label>Password:</label>
                    <input type="text" name="password" value="${pass}">

                </div>
                <div>
                    <button type="submit">Login</button>
                </div>

            </table>
            <div>${requestScope.error}</div>
            <p style="text-align:center; margin-top:15px;">
                Don't have an account? 
                <a href="ChooseRole">Register</a>
            </p>
        </form>

    </body>
</html>
