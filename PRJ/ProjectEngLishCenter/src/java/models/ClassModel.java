/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package models;

/**
 *
 * @author Lenovo
 */
public class ClassModel {
    private int classId;
    private String courseName;
    private String teacherName;
    private String startDate;
    private String endDate;
    private String schedule;
    private String room;
    private int totalStudents;

    public ClassModel() {
    }

    public ClassModel(int classId, String courseName, String teacherName, String startDate, String endDate, String schedule, String room, int totalStudents) {
        this.classId = classId;
        this.courseName = courseName;
        this.teacherName = teacherName;
        this.startDate = startDate;
        this.endDate = endDate;
        this.schedule = schedule;
        this.room = room;
        this.totalStudents = totalStudents;
    }

    public int getClassId() {
        return classId;
    }

    public void setClassId(int classId) {
        this.classId = classId;
    }

    public String getCourseName() {
        return courseName;
    }

    public void setCourseName(String courseName) {
        this.courseName = courseName;
    }

    public String getTeacherName() {
        return teacherName;
    }

    public void setTeacherName(String teacherName) {
        this.teacherName = teacherName;
    }

    public String getStartDate() {
        return startDate;
    }

    public void setStartDate(String startDate) {
        this.startDate = startDate;
    }

    public String getEndDate() {
        return endDate;
    }

    public void setEndDate(String endDate) {
        this.endDate = endDate;
    }

    public String getSchedule() {
        return schedule;
    }

    public void setSchedule(String schedule) {
        this.schedule = schedule;
    }

    public String getRoom() {
        return room;
    }

    public void setRoom(String room) {
        this.room = room;
    }

    public int getTotalStudents() {
        return totalStudents;
    }

    public void setTotalStudents(int totalStudents) {
        this.totalStudents = totalStudents;
    }
    
}
