/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controllers;

import dal.StudentDAO;
import dal.AccountDAO;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author tan_b
 */
public class RegisterStudentController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet RegisterStudentController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet RegisterStudentController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher("views/RegisterStudent.jsp");
        rd.forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String fName = request.getParameter("fname");
        String lName = request.getParameter("lname");
        String bdate = request.getParameter("bdate");
        String gender = request.getParameter("gender");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        String parentName = request.getParameter("parentName");
        String parentPhone = request.getParameter("parentPhone");
        String parentEmail = request.getParameter("parentEmail");
        String parentAddress = request.getParameter("parentAddress");

        RequestDispatcher rd;
        if (username == null || username.trim().isEmpty()
                || password == null || password.trim().isEmpty()
                || fName == null || fName.trim().isEmpty()
                || lName == null || lName.trim().isEmpty()
                || bdate == null || bdate.trim().isEmpty()
                || gender == null || gender.trim().isEmpty()
                || phone == null || phone.trim().isEmpty()
                || email == null || email.trim().isEmpty()
                || address == null || address.trim().isEmpty()
                || parentName == null || parentName.trim().isEmpty()
                || parentPhone == null || parentPhone.trim().isEmpty()
                || parentEmail == null || parentEmail.trim().isEmpty()) {

            request.setAttribute("error", "Please fill all required fields!");
            rd = request.getRequestDispatcher("/views/RegisterStudent.jsp");
            rd.forward(request, response);
            return;
        }

        String emailRegex = "^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}$";
        String phoneRegex = "^\\d{10}$";

        if (!email.matches(emailRegex)) {
            request.setAttribute("error", "Invalid student email!");
            request.getRequestDispatcher("/views/RegisterStudent.jsp")
                    .forward(request, response);
            return;
        }

        if (!phone.matches(phoneRegex)) {
            request.setAttribute("error", "Student phone must be 10 digits");
            request.getRequestDispatcher("/views/RegisterStudent.jsp")
                    .forward(request, response);
            return;
        }

        if (!parentEmail.matches(emailRegex)) {
            request.setAttribute("error", "Invalid parent email!");
            request.getRequestDispatcher("/views/RegisterStudent.jsp")
                    .forward(request, response);
            return;
        }

        if (!parentPhone.matches(phoneRegex)) {
            request.setAttribute("error", "Parent phone must be 10 digits");
            request.getRequestDispatcher("/views/RegisterStudent.jsp")
                    .forward(request, response);
            return;
        }
        StudentDAO stuDao = new StudentDAO();
        AccountDAO accDao = new AccountDAO();

        int parentId = stuDao.insertParent(parentName, parentPhone, parentEmail, parentAddress);
        if (parentId != -1) {
            int studentId = stuDao.insertStudent(username, password, fName, lName, bdate, gender, phone, email, address, parentId);

            if (studentId != -1) {
                accDao.insertStudentAccount(username, password, studentId);
                rd = request.getRequestDispatcher("index.jsp");
            } else {
                request.setAttribute("error", "Insert student failed!");
                rd = request.getRequestDispatcher("views/RegisterStudent.jsp");
            }

        } else {
            rd = request.getRequestDispatcher("views/RegisterStudent.jsp");
            request.setAttribute("error", "Phone or Email exists");

        }
        rd.forward(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
