<%-- 
    Document   : Teacher
    Created on : Mar 13, 2026, 8:18:06 AM
    Author     : Lenovo
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/styles.css" />
        <title>TEACHER</title>
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        <jsp:include page="topnav.jsp"/>
        <div class="content">
            <table>

                <tr>
                    <td>TeacherId</td>
                    <td>Name</td>
                    <td>Phone</td>
                    <td>Email</td>
                    <td>Specialization</td>
                </tr>   




                <c:forEach var="ts" items="${teacher}">
                    <tr>
                        <td>${ts.teacherId}</td>
                        <td>${ts.name}</td>
                        <td>${ts.phone}</td>
                        <td>${ts.email}</td>
                        <td>${ts.specialization}</td>
                        <td><a href="#">View</a></td>


                    </tr>

                </c:forEach>
            </table>
        </div>

        <jsp:include page="footer.jsp"/>
    </body>


</html>
