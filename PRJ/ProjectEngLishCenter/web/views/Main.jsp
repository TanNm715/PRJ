<%-- 
    Document   : AdminHome
    Created on : Mar 11, 2026, 7:13:59 PM
    Author     : tan_b
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/styles.css" />
        <title>English Center Management</title>
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        <jsp:include page="topnav.jsp"/>
        <div class="content">
            <h2>Login successfully</h2>
            <p>Welcome ${sessionScope.login.username}</p> 
        </div>

        <jsp:include page="footer.jsp"/>

    </body>
</html>
