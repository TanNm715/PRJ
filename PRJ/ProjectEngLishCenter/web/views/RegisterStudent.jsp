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

        <form action="${pageContext.request.contextPath}/RegisterStudent" method="POST" class="register-form">

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
                <label>First Name <span style="color: red">(*)</span></label>
                <input type="text" name="fname">
            </div>
            
            <div class="form-group">
                <label>Last Name <span style="color: red">(*)</span></label>
                <input type="text" name="lname">
            </div>
            
            <div class="form-group">
                <label>Date of birth <span style="color: red">(*)</span></label>
                <input type="date" name="bdate">
            </div>
            
            <div class="form-group">
                <label>Gender <span style="color: red">(*)</span></label>
                <select name="gender">
                    <option style="text-align: center;" disabled selected>-------Gender-------</option>
                    <option>Male</option>
                    <option>Female</option>
                    <option>Other</option>
                </select>
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
                <label>Address <span style="color: red">(*)</span></label>
                <input type="text" name="address">
            </div>
            
            <div class="form-group">
                <label>Parent Name <span style="color: red">(*)</span></label>
                <input type="text" name="parentName">
            </div>
            
            <div class="form-group">
                <label>Parent Phone <span style="color: red">(*)</span></label>
                <input type="text" name="parentPhone">
            </div>
            
            <div class="form-group">
                <label>Parent Email <span style="color: red">(*)</span></label>
                <input type="text" name="parentEmail">
            </div>
            
            <div class="form-group">
                <label>Parent Address <span style="color: red">(*)</span></label>
                <input type="text" name="parentAddress">
            </div>
            <div><span style="color: red">${requestScope.error}</span></div>

            <button type="submit">Register</button>

        </form>

    </body>
</html>
