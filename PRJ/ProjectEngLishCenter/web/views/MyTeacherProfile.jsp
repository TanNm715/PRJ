<%-- 
    Document   : MyTeacherProfile
    Created on : Mar 22, 2026, 1:04:14 PM
    Author     : tan_b
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/styles.css" />
        <title>My Profile</title>
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        <jsp:include page="topnav.jsp"/>
        <div class="container">
            <div class="left">
                <h3><b>Full Name: </b><br>${teacher.name}</h3>
            </div>

            <div class="right">
                <h2>My Profile</h2>

                
                <p><b>Email:</b> ${teacher.email}</p>
                <p><b>Phone:</b> ${teacher.phone}</p>
                <p><b>Specialization:</b> ${teacher.specialization}</p>
            </div>


        </div>
        <jsp:include page="footer.jsp"/>
    </body>
</html>
