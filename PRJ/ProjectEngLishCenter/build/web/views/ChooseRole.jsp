<%-- 
    Document   : ChooseRole
    Created on : Mar 14, 2026, 10:32:27 AM
    Author     : tan_b
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/login.css" />
        <title>Choose Role</title>
    </head>
    <body>
        <div class="choose-container">
            <h1>Select Account Type</h1>
            <div class="role-box">
                <a class="role-btn" href="RegisterStudent.jsp">Student</a>
                <a class="role-btn" href="${pageContext.request.contextPath}/RegisterTeacher">Teacher</a>
            </div>
        </div>
        
    </body>
</html>
