<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="models.Course"%>

<!DOCTYPE html>
<html>
<head>
    <title>Courses</title>
    
    <style>
        table{
            width:70%;
            border-collapse:collapse;
            margin-top:20px;
        }

        th{
            background-color:#b30000;
            color:white;
        }

        th, td{
            border:1px solid gray;
            padding:10px;
            text-align:center;
        }

        a{
            text-decoration:none;
            color:blue;
        }

    </style>
</head>

<body>

<h2>Courses</h2>

<a href="Courses?action=create">Create a new Course</a>

<br><br>

<table>

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

</body>
</html>