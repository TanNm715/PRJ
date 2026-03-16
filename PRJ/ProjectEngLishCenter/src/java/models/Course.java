package models;

public class Course {

    private int courseId;
    private String courseName;
    private String level;
    private String duration;
    private double fee;

    public Course() {
    }

    public Course(int courseId, String courseName, String level, String duration, double fee) {
        this.courseId = courseId;
        this.courseName = courseName;
        this.level = level;
        this.duration = duration;
        this.fee = fee;
    }

    public int getCourseId() {
        return courseId;
    }

    public void setCourseId(int courseId) {
        this.courseId = courseId;
    }

    public String getCourseName() {
        return courseName;
    }

    public void setCourseName(String courseName) {
        this.courseName = courseName;
    }

    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level;
    }

    public String getDuration() {
        return duration;
    }

    public void setDuration(String duration) {
        this.duration = duration;
    }

    public double getFee() {
        return fee;
    }

    public void setFee(double fee) {
        this.fee = fee;
    }
}