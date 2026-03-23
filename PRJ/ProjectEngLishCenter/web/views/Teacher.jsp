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
        <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/styles.css?v=1" />
        <title>TEACHER</title>
    </head>
    <body style="margin:0; min-height:100vh; display:flex; flex-direction:column;">
        <jsp:include page="header.jsp"/>
        <jsp:include page="topnav.jsp"/>
        <div class="mc-container">
            <div class="mc-content">
                <table class="mc-table">

                    <tr>
                        <th>TeacherId</th>
                        <th>Name</th>
                        <th>Phone</th>
                        <th>Email</th>
                        <th>Specialization</th>
                        
                    </tr>   




                    <c:forEach var="ts" items="${teacher}">
                        <tr>
                            <td>${ts.teacherId}</td>
                            <td>${ts.name}</td>
                            <td>${ts.phone}</td>
                            <td>${ts.email}</td>
                            <td>${ts.specialization}</td>
                            


                        </tr>

                    </c:forEach>
                </table>
            </div></div>

            <jsp:include page="footer.jsp"/>
    </body>


</html>
