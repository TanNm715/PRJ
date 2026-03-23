<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create New Course</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/styles.css?v=1" />
        
        <style>
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
                box-shadow: 0 0 5px rgba(179, 27, 27, 0.2); /* Sáng nhẹ viền đỏ khi click */
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
                    
                    <h2 style="color: #b31b1b; margin-top: 0; margin-bottom: 30px; font-size: 28px;">Create New Course</h2>
                    
                    <form action="Courses" method="post" class="custom-form">
                        
                        <div class="form-group">
                            <label>Course Name:</label>
                            <input type="text" name="name" placeholder="Ví dụ: IELTS Preparation" required>
                        </div>
                        
                        <div class="form-group">
                            <label>Level:</label>
                            <input type="text" name="level" placeholder="Ví dụ: Advanced" required>
                        </div>
                        
                        <div class="form-group">
                            <label>Duration:</label>
                            <input type="text" name="duration" placeholder="Ví dụ: 6 months" required>
                        </div>
                        
                        <div class="form-group">
                            <label>Fee:</label>
                            <input type="number" name="fee" placeholder="Ví dụ: 6000000" required>
                        </div>
                        
                        <button type="submit" class="btn-submit">Create Course</button>
                        
                    </form>
                    
                </div> </div>
        </div>

        <jsp:include page="footer.jsp"/>
        
    </body>
</html>
