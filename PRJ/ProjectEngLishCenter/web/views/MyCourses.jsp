<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/styles.css?v=1" />
        <title>My Courses</title>
    </head>

    <body style="margin:0; min-height:100vh; display:flex; flex-direction:column;">

        <jsp:include page="header.jsp"/>
        <jsp:include page="topnav.jsp"/>

        <!-- Content -->

        <div class="mc-container">
            <div class="mc-content">
                <h2 style="font-size: 28px; margin-bottom: 30px;">My Courses</h2>

                <table class="mc-table">
                    <tr>
                        <th>Course Name</th>
                        <th>Level</th>
                        <th>Duration</th>



                        <th>Status</th>
                        <th>Start Date</th>
                        <th>End Date</th>
                    </tr>

                    <c:forEach var="mc" items="${mycourses}">
                        <tr>
                            <td>${mc.courseName}</td>
                            <td>${mc.level}</td>
                            <td>${mc.duration}</td>



                            <td>${mc.status}</td>
                            <td>${mc.startDate}</td>
                            <td>${mc.endDate}</td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
        </div>



        <jsp:include page="footer.jsp"/>

    </body>
</html>
