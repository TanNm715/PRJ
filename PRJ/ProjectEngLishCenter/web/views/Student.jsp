<%-- 
    Document   : Student
    Created on : Mar 15, 2026, 5:11:43 PM
    Author     : Lenovo
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/styles.css" />
        <title>STUDENT</title>
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        <jsp:include page="topnav.jsp"/>
        <div class="content">
            <table>

                <tr>
                    <th>StudentId</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Date of Birth</th>
                    <th>Gender</th>
                    <th>Phone</th>
                    <th>Email</th>
                    <th>Address</th>
                    <th>Parent Name</th>
                    <th>Parent Phone</th>
                    <th>Parent Email</th>
                </tr>   




                <c:forEach var="st" items="${student}">
                    <tr>
                        <td>${st.studentId}</td>                       
                        <td>${st.firstname}</td>
                        <td>${st.lastname}</td>
                        <td>${st.dateofbirth}</td>
                        <td>${st.gender}</td>
                        <td>${st.phone}</td>
                        <td>${st.email}</td>
                        <td>${st.address}</td>
                        <td>${st.parentname}</td>
                        <td>${st.parentphone}</td>
                        <td>${st.parentemail}</td>

                    </tr>

                </c:forEach>
            </table>
        </div>

        <jsp:include page="footer.jsp"/>
    </body>


</html>
