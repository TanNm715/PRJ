package models;

public class Schedule {

    private String courseName;
    private String teacherName;
    private String schedule;
    private String room;

    public Schedule() {
    }

    public Schedule(String courseName, String teacherName, String schedule, String room) {
        this.courseName = courseName;
        this.teacherName = teacherName;
        this.schedule = schedule;
        this.room = room;
    }

    public String getCourseName() {
        return courseName;
    }

    public String getTeacherName() {
        return teacherName;
    }

    public String getSchedule() {
        return schedule;
    }

    public String getRoom() {
        return room;
    }
}
