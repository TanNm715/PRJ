<%-- 
    Document   : header
    Created on : Mar 11, 2026, 9:39:36 PM
    Author     : tan_b
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="models.Account" %>
<div class="header">

    <img src="${pageContext.request.contextPath}/static/images/logo.png" class="logo">

    <h2>English Center Management</h2>

    <p>User: ${login.getUsername()}</p>

</div>