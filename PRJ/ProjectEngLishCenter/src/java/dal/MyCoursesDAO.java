/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import models.MyCourses;

/**
 *
 * @author Lenovo
 */
public class MyCoursesDAO extends DBContext {

    PreparedStatement st;
    ResultSet rs;

    public List<MyCourses> getMyCourses(int studentId) {
        List<MyCourses> list = new ArrayList<>();
        try {
            String sql
                    = "SELECT co.course_name,\n"
                    + "       co.level,\n"
                    + "       co.duration,\n"
                    + "       e.status,\n"
                    + "       c.start_date,\n"
                    + "       c.end_date\n"
                    + "FROM Enrollment e\n"
                    + "JOIN Class c ON e.class_id = c.class_id\n"
                    + "JOIN Course co ON c.course_id = co.course_id\n"
                    + "JOIN Teacher t ON c.teacher_id = t.teacher_id\n"
                    + "WHERE e.student_id = ?;";

            st = connection.prepareStatement(sql);

            // truyền tham số studentId
            st.setInt(1, studentId);

            rs = st.executeQuery();

            while (rs.next()) {

                String courseName = rs.getString("course_name");
                String level = rs.getString("level");
                String duration = rs.getString("duration");
                
                String status = rs.getString("status");
                String startDate = rs.getString("start_date");
                String endDate = rs.getString("end_date");

                MyCourses mc = new MyCourses(courseName, level, duration, status, startDate, endDate);

                list.add(mc);
            }

            return list;

        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
