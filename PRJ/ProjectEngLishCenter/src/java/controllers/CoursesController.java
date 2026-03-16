package controllers;

import dal.CourseDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import models.Course;

public class CoursesController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        CourseDAO dao = new CourseDAO();

        // Lấy danh sách course từ database
        List<Course> list = dao.getAllCourses();

        // Gửi dữ liệu sang JSP
        request.setAttribute("courses", list);

        // Chuyển sang trang JSP
        request.getRequestDispatcher("views/Courses.jsp").forward(request, response);
    }

   @Override
protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {

    String action = request.getParameter("action");
    CourseDAO dao = new CourseDAO();

    if (action != null) {

        if (action.equals("create")) {
            request.getRequestDispatcher("views/CreateCourse.jsp").forward(request, response);
            return;
        }

        if (action.equals("delete")) {
            int id = Integer.parseInt(request.getParameter("id"));

            dao.deleteCourse(id);

            response.sendRedirect("Courses");
            return;
        }

        if (action.equals("edit")) {
            int id = Integer.parseInt(request.getParameter("id"));

            Course c = dao.getCourseById(id);

            request.setAttribute("course", c);

            request.getRequestDispatcher("views/EditCourse.jsp").forward(request, response);
            return;
        }
    }

    // load danh sách course
    List<Course> list = dao.getAllCourses();

    request.setAttribute("courses", list);

    request.getRequestDispatcher("views/Courses.jsp").forward(request, response);
}

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String idRaw = request.getParameter("id");

        CourseDAO dao = new CourseDAO();

        if (idRaw != null && !idRaw.isEmpty()) {

            int id = Integer.parseInt(idRaw);

            String name = request.getParameter("name");
            String level = request.getParameter("level");
            String duration = request.getParameter("duration");
            double fee = Double.parseDouble(request.getParameter("fee"));

            dao.updateCourse(id, name, level, duration, fee);

        } else {

            String name = request.getParameter("name");
            String level = request.getParameter("level");
            String duration = request.getParameter("duration");
            double fee = Double.parseDouble(request.getParameter("fee"));

            dao.insertCourse(name, level, duration, fee);
        }

        response.sendRedirect("Courses");
    }

    @Override
    public String getServletInfo() {
        return "Courses Controller";
    }

}
