<%-- 
    Document   : Register
    Created on : Mar 12, 2026, 2:36:23 PM
    Author     : tan_b
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/login.css" />
        <title>Register</title>
    </head>
    <body>

        <form action="${pageContext.request.contextPath}/RegisterTeacher" method="POST" class="register-form">

            <h1>English Center Register</h1>

            <div class="form-group">
                <label>Username <span style="color: red">(*)</span></label>
                <input type="text" name="username">
            </div>

            <div class="form-group">
                <label>Password <span style="color: red">(*)</span></label>
                <input type="text" name="password">
            </div>

            <div class="form-group">
                <label>Name <span style="color: red">(*)</span></label>
                <input type="text" name="name">
            </div>

            <div class="form-group">
                <label>Phone <span style="color: red">(*)</span></label>
                <input type="text" name="phone">
            </div>

            <div class="form-group">
                <label>Email <span style="color: red">(*)</span></label>
                <input type="text" name="email">
            </div>

            <div class="form-group">
                <label>Specialization <span style="color: red">(*)</span></label>


                <div class="spec-box">
                    <label><input type="checkbox" name="specId" value="1"> Speaking</label>
                    <label><input type="checkbox" name="specId" value="2"> Listening</label>
                    <label><input type="checkbox" name="specId" value="3"> Writing</label>
                    <label><input type="checkbox" name="specId" value="4"> Reading</label>
                    <label><input type="checkbox" name="specId" value="5"> Grammar</label>
                    <label><input type="checkbox" name="specId" value="6"> Pronunciation</label>
                    <label><input type="checkbox" name="specId" value="7"> Vocabulary</label>
                </div>

            </div>
            <div><span style="color: red">${requestScope.error}</span></div>

            <button type="submit">Register</button>

        </form>

    </body>
</html>
