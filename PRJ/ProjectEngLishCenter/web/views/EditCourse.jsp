<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="models.Course"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Course</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/styles.css?v=1" />
        
        <style>
            /* --- Tái sử dụng CSS căn giữa y hệt trang Create --- */
            .center-wrapper {
                display: flex;
                flex-direction: column;
                align-items: center;
                width: 100%;
            }

            .custom-form {
                width: 100%;
                max-width: 450px; 
                text-align: left; 
            }

            .form-group {
                margin-bottom: 20px;
            }

            .form-group label {
                display: block;
                font-weight: 600;
                margin-bottom: 8px;
                color: #333;
            }

            .form-group input {
                width: 100%;
                padding: 12px 15px;
                border: 1px solid #cccccc;
                border-radius: 6px;
                box-sizing: border-box; 
                font-size: 15px;
                transition: border-color 0.3s ease;
            }

            .form-group input:focus {
                border-color: #b31b1b;
                outline: none;
                box-shadow: 0 0 5px rgba(179, 27, 27, 0.2); 
            }

            .btn-submit {
                width: 100%;
                background-color: #b31b1b;
                color: white;
                padding: 14px;
                border: none;
                border-radius: 6px;
                font-size: 16px;
                font-weight: bold;
                cursor: pointer;
                transition: background-color 0.3s ease;
                margin-top: 15px;
            }

            .btn-submit:hover {
                background-color: #8c1515;
            }
        </style>
    </head>
    
    <body style="margin:0; min-height:100vh; display:flex; flex-direction:column; font-family: sans-serif;">
        
        <jsp:include page="header.jsp"/>
        <jsp:include page="topnav.jsp"/>
        
        <div class="mc-container">
            <div class="mc-content">
                
                <div class="center-wrapper">
                    
                    <h2 style="color: #b31b1b; margin-top: 0; margin-bottom: 30px; font-size: 28px;">Edit Course</h2>
                    
                    <%
                    // Lấy dữ liệu khóa học từ Servlet truyền sang
                    Course c = (Course)request.getAttribute("course");
                    if (c != null) {
                    %>
                    <form action="Courses" method="post" class="custom-form">
                        
                        <input type="hidden" name="id" value="<%=c.getCourseId()%>">
                        
                        <div class="form-group">
                            <label>Course Name:</label>
                            <input type="text" name="name" value="<%=c.getCourseName()%>" required>
                        </div>
                        
                        <div class="form-group">
                            <label>Level:</label>
                            <input type="text" name="level" value="<%=c.getLevel()%>" required>
                        </div>
                        
                        <div class="form-group">
                            <label>Duration:</label>
                            <input type="text" name="duration" value="<%=c.getDuration()%>" required>
                        </div>
                        
                        <div class="form-group">
                            <label>Fee:</label>
                            <input type="text" name="fee" value="<%=c.getFee()%>" required>
                        </div>
                        
                        <button type="submit" class="btn-submit">Update Course</button>
                        
                    </form>
                    <%
                    } else {
                    %>
                        <p style="color: red; font-weight: bold;">Course not found!</p>
                    <%
                    }
                    %>
                    
                </div> 

            </div>
        </div>

        <jsp:include page="footer.jsp"/>
        
    </body>
</html>
