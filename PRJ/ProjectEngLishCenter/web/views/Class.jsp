<%-- 
    Document   : Class.jsp
    Created on : Mar 19, 2026, 6:51:38 PM
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
                    <th>Class Id</th>
                    <th>Course</th>
                    <th>Teacher Name</th>
                    <th>Start Date</th>
                    <th>End Date</th>
                    <th>Schedule</th>
                    <th>Room</th>
                    <th>Total Students</th>
                </tr>   




                <c:forEach var="cl" items="${classes}">
                    <tr>
                        <td>${cl.classId}</td>
                        <td>${cl.courseName}</td>
                        <td>${cl.teacherName}</td>
                        <td>${cl.startDate}</td>
                        <td>${cl.endDate}</td>
                        <td>${cl.schedule}</td>
                        <td>${cl.room}</td>
                        <td>${cl.totalStudents}</td>
                        


                    </tr>

                </c:forEach>
            </table>
        </div>

        <jsp:include page="footer.jsp"/>
    </body>


</html>
