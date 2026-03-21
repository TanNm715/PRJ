<%-- 
    Document   : MyProfile
    Created on : Mar 21, 2026, 11:09:26 PM
    Author     : tan_b
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Profile</title>
    </head>
    <body>

        <div class="content">
            <div class="left">
                <h3>${student.firstname} ${student.lastname}</h3>
            </div>

            <div class="right">
                <h2>My Profile</h2>

                <p><b>Full Name:</b> ${student.firstname} ${student.lastname}</p>
                <p><b>Date of Birth:</b> ${student.dateofbirth}</p>
                <p><b>Gender:</b> ${student.gender}</p>
                <p><b>Email:</b> ${student.email}</p>
                <p><b>Phone:</b> ${student.phone}</p>
                <p><b>Address:</b> ${student.address}</p>

                <hr>

                <p><b>Parent Name:</b> ${student.parentname}</p>
                <p><b>Parent Phone:</b> ${student.parentphone}</p>
                <p><b>Parent Email:</b> ${student.parentemail}</p>
               
            </div>

        </div>

    </body>
</html>
