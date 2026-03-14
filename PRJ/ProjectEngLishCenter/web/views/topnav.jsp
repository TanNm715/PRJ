<%-- 
    Document   : topnav
    Created on : Mar 11, 2026, 9:40:46 PM
    Author     : tan_b
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="topnav">
    <a href='Home' class="home">Home</a>
    <c:if test="${login.getRoleId() == 1}">
        <a href='Accounts'>Accounts</a>
        <a href='Students'>Students</a>
        <a href='Teachers'>Teachers</a>
        <a href='Courses'>Courses</a>
        <a href='Classes'>Classes</a>
    </c:if>
    <c:if test="${login.getRoleId() == 2}">
        <a href='Accounts'>Accounts</a>
        <a href='Students'>Students</a>
        <a href='Students'>Teachers</a>

    </c:if>    
    <c:if test="${login.getRoleId() == 3}">
        <a href='Accounts'>Accounts</a>
        <a href='Students'>Students</a>
        <a href='Students'>Teachers</a>
    </c:if>    
    <a href='Logout' class="logout">Logout</a>
</div>
