package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import models.Schedule;

public class ScheduleDAO extends DBContext {

    PreparedStatement st;
    ResultSet rs;

    public List<Schedule> getScheduleById(int studentId) {
        List<Schedule> list = new ArrayList<>();

        try {
            String sql = """
            SELECT 
                c.course_name,
                t.name AS teacher_name,
                cl.schedule,
                cl.room
            FROM enrollment e
            JOIN class cl ON e.class_id = cl.class_id
            JOIN course c ON cl.course_id = c.course_id
            JOIN teacher t ON cl.teacher_id = t.teacher_id
            WHERE e.student_id = ?
        """;

            st = connection.prepareStatement(sql);
            st.setInt(1, studentId);
            rs = st.executeQuery();

            while (rs.next()) {

                String course = rs.getString("course_name");
                String teacher = rs.getString("teacher_name");
                String schedule = rs.getString("schedule");
                String room = rs.getString("room");

                Schedule s = new Schedule(course, teacher, schedule, room);
                list.add(s);
                
                
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }
}
