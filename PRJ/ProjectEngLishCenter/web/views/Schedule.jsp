<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/styles.css" />
        <title>SCHEDULE</title>
    </head>
    <body>

        <jsp:include page="header.jsp"/>
        <jsp:include page="topnav.jsp"/>

        <div class="content">
            <h3>Schedule</h3>

            <table border="1">
                <tr>
                    <th>Course</th>
                    <th>Teacher</th>
                    <th>Day</th>
                    <th>Room</th>
                </tr>

                <c:forEach var="s" items="${schedules}">
                    <tr>
                        <td>${s.courseName}</td>
                        <td>${s.teacherName}</td>
                        <td>${s.schedule}</td>
                        <td>${s.room}</td>
                    </tr>
                </c:forEach>

            </table>
        </div>

        <jsp:include page="footer.jsp"/>

    </body>
</html>