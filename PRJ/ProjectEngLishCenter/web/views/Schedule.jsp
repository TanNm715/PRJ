<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/styles.css?v=1" />
        
        <title>SCHEDULE</title>
    </head>
    <body style="margin:0; min-height:100vh; display:flex; flex-direction:column;">

        <jsp:include page="header.jsp"/>
        <jsp:include page="topnav.jsp"/>

        <div class="mc-container">
            <div class="mc-content">
            
            <h2>Schedule</h2>

            <table class="mc-table">
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
            
            </div> </div> <jsp:include page="footer.jsp"/>

    </body>
</html>
