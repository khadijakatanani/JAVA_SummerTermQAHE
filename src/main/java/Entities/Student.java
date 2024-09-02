/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entities;

/**
 *
 * @author Admin
 */
public class Student {

    // name, course, mark
    private String id;
    private String name;
    private String surname;
    private String course;
    private double mark;

    public Student(String name, String surname, String course, double mark) {
        this.name = name;
        this.surname = surname;
        this.course = course; 
        this.mark = mark;
    }

    public Student(String id, String name, String surname, String course, double mark) {
        this.id = id;
        this.name = name;
        this.surname = surname;
        this.course = course;
        this.mark = mark;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCourse() {
        return course;
    }

    public void setCourse(String course) {
        this.course = course;
    }

    public double getMark() {
        return mark;
    }

    public void setMark(double mark) {
        this.mark = mark;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    @Override
    public String toString() {
        return "Student{" + "id=" + id + ", name=" + name + ", surname=" + surname + ", course=" + course + ", mark=" + mark + '}';
    }
}
