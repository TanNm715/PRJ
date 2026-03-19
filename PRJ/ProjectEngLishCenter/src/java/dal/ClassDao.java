/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import models.ClassModel;

/**
 *
 * @author Lenovo
 */
public class ClassDao extends DBContext{

    PreparedStatement st; //cb cau lenh
    ResultSet rs;// hung kq tra ve

    public List<ClassModel> getClasses() {
        List<ClassModel> list = new ArrayList<>();
        try {
            String sql
                    = "SELECT c.class_id,\n"
                    + "       co.course_name,\n"
                    + "       t.name AS teacher_name,\n"
                    + "       c.start_date,\n"
                    + "       c.end_date,\n"
                    + "       c.schedule,\n"
                    + "       c.room,\n"
                    + "       COUNT(e.student_id) AS total_students\n"
                    + "FROM Class c\n"
                    + "JOIN Course co ON c.course_id = co.course_id\n"
                    + "JOIN Teacher t ON c.teacher_id = t.teacher_id\n"
                    + "LEFT JOIN Enrollment e ON c.class_id = e.class_id\n"
                    + "GROUP BY c.class_id, co.course_name, t.name,\n"
                    + "         c.start_date, c.end_date, c.schedule, c.room;";
            st = connection.prepareStatement(sql);
            // truyen tham so cho cau lenh sql
            // o day k can truyen tham so vi cau lenh sql k co where

            rs = st.executeQuery(); // select
            while (rs.next()) {
                int classId = rs.getInt("class_id");
                String courseName = rs.getString("course_name");
                String teacherName = rs.getString("teacher_name");
                String startDate = rs.getString("start_date");
                String endDate = rs.getString("end_date");
                String schedule = rs.getString("schedule");
                String room = rs.getString("room");
                int totalStudents = rs.getInt("total_students");
                
                ClassModel cl = new ClassModel(classId, courseName,teacherName,startDate,endDate, schedule,room,totalStudents);
                list.add(cl);
            }
            return list;
        } catch (Exception e) {
            return null;
        }
    }
}
    