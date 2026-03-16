/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package models;

/**
 *
 * @author Lenovo
 */
public class Student {
    private int studentId;
    private String firstname;
    private String lastname;
    private String dateofbirth;
    private String gender;
    private String phone;
    private String email;
    private String address;
    private String parentname;
    private String parentphone;
    private String parentemail;

    public Student() {
    }

    public Student(int studentId, String firstname, String lastname, String dateofbirth, String gender, String phone, String email, String address, String parentname, String parentphone, String parentemail) {
        this.studentId = studentId;
        this.firstname = firstname;
        this.lastname = lastname;
        this.dateofbirth = dateofbirth;
        this.gender = gender;
        this.phone = phone;
        this.email = email;
        this.address = address;
        this.parentname = parentname;
        this.parentphone = parentphone;
        this.parentemail = parentemail;
    }

    public int getStudentId() {
        return studentId;
    }

    public void setStudentId(int studentId) {
        this.studentId = studentId;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getDateofbirth() {
        return dateofbirth;
    }

    public void setDateofbirth(String dateofbirth) {
        this.dateofbirth = dateofbirth;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getParentname() {
        return parentname;
    }

    public void setParentname(String parentname) {
        this.parentname = parentname;
    }

    public String getParentphone() {
        return parentphone;
    }

    public void setParentphone(String parentphone) {
        this.parentphone = parentphone;
    }

    public String getParentemail() {
        return parentemail;
    }

    public void setParentemail(String parentemail) {
        this.parentemail = parentemail;
    }
    
    
    

    
}
