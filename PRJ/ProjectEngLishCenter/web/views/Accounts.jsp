<%-- 
    Document   : Accounts
    Created on : Mar 12, 2026, 10:33:51 AM
    Author     : tan_b
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/styles.css?v=1" />
        <title>JSP Page</title>
    </head>
    <body style="margin:0; min-height:100vh; display:flex; flex-direction:column;">
        <jsp:include page="header.jsp"/>
        <jsp:include page="topnav.jsp"/>
        <div class="mc-container">
            <div class="mc-content">

            <table class="mc-table">
                <tr>
                    <th>Username</th>
                    <th>Password</th>
                    <th>Role</th>


                </tr>


                <c:forEach var="acc" items="${accounts}">
                    <tr>
                        <td>${acc.username}</td>
                        <td>${acc.password}</td>
                        <td>${acc.roleName}</td>
    <!--                    <td><a href="DetailAccount?id=${acc.getUsername()}" class='btnDetails'>View</a>
                            <a href="EditAccount?id=${acc.getUsername()}" class='btnEdit'>Edit</a></td>-->

                    </tr>

                </c:forEach>

            </table>
        </div></div>

        <jsp:include page="footer.jsp"/>
    </body>
</html>
