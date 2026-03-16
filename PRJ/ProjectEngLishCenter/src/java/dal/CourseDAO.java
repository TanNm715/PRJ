/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

/**
 *
 * @author TV
 */
import java.sql.*;
import java.util.*;
import models.Course;

public class CourseDAO extends DBContext {

    public List<Course> getAllCourses() {

        List<Course> list = new ArrayList<>();

        String sql = "SELECT * from course";

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();

            while (rs.next()) {

                Course c = new Course(
                        rs.getInt("course_id"),
                        rs.getString("course_name"),
                        rs.getString("level"),
                        rs.getString("duration"),
                        rs.getDouble("fee")
                );

                list.add(c);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    public void insertCourse(String name, String level, String duration, double fee) {

        String sql = "INSERT INTO course(course_id, course_name, level, duration, fee) "
                + "VALUES((SELECT ISNULL(MAX(course_id),0)+1 FROM course),?,?,?,?)";

        try {
            PreparedStatement st = connection.prepareStatement(sql);

            st.setString(1, name);
            st.setString(2, level);
            st.setString(3, duration);
            st.setDouble(4, fee);

            st.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void updateCourse(int id, String name, String level, String duration, double fee) {

        String sql = "UPDATE course SET course_name=?, level=?, duration=?, fee=? WHERE course_id=?";

        try {
            PreparedStatement st = connection.prepareStatement(sql);

            st.setString(1, name);
            st.setString(2, level);
            st.setString(3, duration);
            st.setDouble(4, fee);
            st.setInt(5, id);

            st.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void deleteCourse(int id) {

        String sql = "DELETE FROM course WHERE course_id=?";

        try {
            PreparedStatement st = connection.prepareStatement(sql);

            st.setInt(1, id);

            st.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    public Course getCourseById(int id){

    String sql = "SELECT * FROM course WHERE course_id=?";

    try{
        PreparedStatement st = connection.prepareStatement(sql);

        st.setInt(1, id);

        ResultSet rs = st.executeQuery();

        if(rs.next()){
            return new Course(
                rs.getInt("course_id"),
                rs.getString("course_name"),
                rs.getString("level"),
                rs.getString("duration"),
                rs.getDouble("fee")
            );
        }

    }catch(Exception e){
        e.printStackTrace();
    }

    return null;
}
}
