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

    public int insertParent(String name, String phone, String email, String address) {
        int parentId = -1;

        try {
            String sql = """
                     INSERT INTO Parent(name, phone, email, address)
                     VALUES (?, ?, ?, ?)
                     """;

            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, phone);
            ps.setString(3, email);
            ps.setString(4, address);

            ps.executeUpdate();

            String sql2 = """
                      SELECT TOP 1 parent_id
                      FROM Parent
                      ORDER BY parent_id DESC
                      """;

            PreparedStatement ps2 = connection.prepareStatement(sql2);
            ResultSet rs = ps2.executeQuery();

            if (rs.next()) {
                parentId = rs.getInt("parent_id");
            }

        } catch (Exception e) {
            e.printStackTrace();
            parentId = -1;
        }

        return parentId;
    }

    public int insertStudent(
            String username, String password,
            String firstName, String lastName,
            String bdate, String gender,
            String phone, String email, String address,
            int parentId) {

        int studentId = -1;

        try {
            String sql = """
                         INSERT INTO Student(parent_id, first_name, last_name, date_of_birth, gender, phone, email, address)
                         VALUES (?, ?, ?, ?, ?, ?, ?, ?)
                         """;

            PreparedStatement ps = connection.prepareStatement(sql);

            ps.setInt(1, parentId);
            ps.setString(2, firstName);
            ps.setString(3, lastName);
            ps.setString(4, bdate);
            ps.setString(5, gender);
            ps.setString(6, phone);
            ps.setString(7, email);
            ps.setString(8, address);

            ps.executeUpdate();
            String sql2 = """
                          SELECT TOP 1 student_id
                          FROM Student
                          ORDER BY student_id DESC
                          """;

            ResultSet rs = connection.prepareStatement(sql2).executeQuery();

            if (rs.next()) {
                studentId = rs.getInt("student_id");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return studentId;
    }
}
