<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/styles.css" />
        <title>My Courses</title>
    </head>

    <body style="margin:0; min-height:100vh; display:flex; flex-direction:column;">

        <jsp:include page="header.jsp"/>
        <jsp:include page="topnav.jsp"/>

        <!-- Content -->

        <div class="container" style="display: flex; justify-content: center; width: 100%; padding-top: 40px; padding-bottom: 40px;">
            <div class="right" style="text-align: center; width: 80%; max-width: 1200px; padding: 40px; box-sizing: border-box; min-height: 500px;">
                <h2 style="font-size: 28px; margin-bottom: 30px;">My Courses</h2>

                <table border="1" style="margin:auto;">
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