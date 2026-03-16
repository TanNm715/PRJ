/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import models.Student;

/**
 *
 * @author Lenovo
 */
public class StudentDAO extends DBContext {

    PreparedStatement st; //cb cau lenh
    ResultSet rs;// hung kq tra ve

    public List<Student> getStudent() {
        List<Student> list = new ArrayList<>();
        try {
            String sql
                    = "SELECT s.student_id,\n"
                    + "       s.first_name,\n"
                    + "       s.last_name,\n"
                    + "       s.date_of_birth,\n"
                    + "       s.gender,\n"
                    + "       s.phone,\n"
                    + "       s.email,\n"
                    + "       s.address,\n"
                    + "       p.name AS parent_name,\n"
                    + "       p.phone AS parent_phone,\n"
                    + "       p.email AS parent_email\n"
                    + "FROM Student s\n"
                    + "LEFT JOIN Parent p\n"
                    + "ON s.parent_id = p.parent_id;";
            st = connection.prepareStatement(sql);
            // truyen tham so cho cau lenh sql
            // o day k can truyen tham so vi cau lenh sql k co where

            rs = st.executeQuery(); // select
            while (rs.next()) {
                int studentId = rs.getInt("student_id");
                String firstname = rs.getString("first_name");
                String lastname = rs.getString("last_name");
                String dateofbirth = rs.getString("date_of_birth");
                String gender = rs.getString("gender");
                String phone = rs.getString("phone");
                String email = rs.getString("email");
                String address = rs.getString("address");
                String parentname = rs.getString("parent_name");
                String parentphone = rs.getString("parent_phone");
                String parentemail = rs.getString("parent_email");
                Student st = new Student(studentId, firstname, lastname, dateofbirth, gender, phone, email, address, parentname, parentphone, parentemail);
                list.add(st);
            }
            return list;
        } catch (Exception e) {
            return null;
        }
    }
}
