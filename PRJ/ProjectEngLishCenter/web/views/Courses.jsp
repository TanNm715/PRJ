<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="models.Course"%>

<!DOCTYPE html>
<html>
    <head>
        <title>Courses</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/styles.css?v=1" />
        <style>
           
            .table-header-action {
                display: flex;
                justify-content: space-between; 
                align-items: center;
                margin-bottom: 25px;
                padding: 0 10px;
            }

            .table-header-action h2 {
                margin: 0; 
            }

           
            .btn-create {
                background-color: #b31b1b; 
                color: #ffffff !important;
                padding: 10px 24px;
                text-decoration: none;
                border-radius: 6px;
                font-weight: bold;
                font-size: 15px;
                transition: all 0.3s ease;
                box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            }

       
            .btn-create:hover {
                background-color: #8c1515; 
                transform: translateY(-2px); 
                box-shadow: 0 4px 8px rgba(0,0,0,0.15);
            }
        </style>
    </head>

    <body style="margin:0; min-height:100vh; display:flex; flex-direction:column;">
        <jsp:include page="header.jsp"/>
        <jsp:include page="topnav.jsp"/>
        <div class="mc-container">
            <div class="mc-content">
                <div class="table-header-action">
                <h2>Courses</h2>

                <a href="Courses?action=create" class="btn-create" >Create a new Course</a>
                </div>

                <br><br>

                <table class="mc-table">

                    <tr>
                        <th>ID</th>
                        <th>Course Name</th>
                        <th>Level</th>
                        <th>Duration</th>
                        <th>Fee</th>
                        <th>Actions</th>
                    </tr>

                    <%
                    List<Course> list = (List<Course>)request.getAttribute("courses");

                    if(list != null){
                        for(Course c : list){
                    %>

                    <tr>

                        <td><%=c.getCourseId()%></td>
                        <td><%=c.getCourseName()%></td>
                        <td><%=c.getLevel()%></td>
                        <td><%=c.getDuration()%></td>
                        <td><%=c.getFee()%></td>

                        <td>
                            <a href="Courses?action=edit&id=<%=c.getCourseId()%>">Edit</a> |
                            <a href="Courses?action=delete&id=<%=c.getCourseId()%>">Delete</a>
                        </td>

                    </tr>

                    <%
                        }
                    }
                    %>

                </table>
            </div></div>


    </body>
    <jsp:include page="footer.jsp"/>
</html>
