<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="models.Course"%>

<%
Course c = (Course)request.getAttribute("course");
%>

<h2>Edit Course</h2>

<form action="Courses" method="post">

<input type="hidden" name="id" value="<%=c.getCourseId()%>">

Course Name:<br>
<input type="text" name="name" value="<%=c.getCourseName()%>"><br><br>

Level:<br>
<input type="text" name="level" value="<%=c.getLevel()%>"><br><br>

Duration:<br>
<input type="text" name="duration" value="<%=c.getDuration()%>"><br><br>

Fee:<br>
<input type="text" name="fee" value="<%=c.getFee()%>"><br><br>

<input type="submit" value="Update">

</form>