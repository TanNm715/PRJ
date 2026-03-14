    /*
     * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
     * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
     */
    package dal;

    import java.sql.PreparedStatement;
    import java.sql.ResultSet;
    import java.util.ArrayList;
    import java.util.List;
    import models.Teacher;

    /**
     *
     * @author Lenovo
     */
    public class TeacherDAO extends DBContext {
        PreparedStatement st; //cb cau lenh
        ResultSet rs;// hung kq tra ve
        public List<Teacher> getTeachers() {
            List<Teacher> list = new ArrayList<>();
            try{
                String sql = "SELECT t.teacher_id,\n" +
    "                       t.name,\n" +
    "                       t.phone,\n" +
    "                       t.email,\n" +
    "                       STRING_AGG(s.specialization_name, ', ') AS specialization\n" +
    "                FROM Teacher t\n" +
    "                JOIN Specialize sp ON t.teacher_id = sp.teacher_id\n" +
    "                JOIN Specialization s ON sp.specialization_id = s.specialization_id\n" +
    "                GROUP BY t.teacher_id, t.name, t.phone, t.email";
                st = connection.prepareStatement(sql);
                // truyen tham so cho cau lenh sql
                // o day k can truyen tham so vi cau lenh sql k co where

                rs = st.executeQuery(); // select
                while(rs.next()){
                    int teacherId = rs.getInt("teacher_id");
                    String name = rs.getString("name");
                    String phone = rs.getString("phone");
                    String email = rs.getString("email");
                    String specialization = rs.getString("specialization");

                    Teacher ts = new Teacher(teacherId, name, phone, email, specialization);
                    list.add(ts);
                }
                return list;
            }catch(Exception e){
                return null;
            }
        }
    }
