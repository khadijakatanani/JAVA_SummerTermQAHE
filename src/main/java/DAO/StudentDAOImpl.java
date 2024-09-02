/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import DB.SQLLiteDBDriver;
import Entities.Student;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Admin
 */
public class StudentDAOImpl implements StudentDAO {

    private boolean querySuccess;
    String url_ = SQLLiteDBDriver.SetupDriver();

    @Override
    public List<Student> getAllStudents() {

        List<Student> studentList = new ArrayList<>();

        String query = "SELECT * FROM student";
        try (Connection connection = DriverManager.getConnection(url_); 
             PreparedStatement preparedStatement = connection.prepareStatement(query); 
             ResultSet resultSet = preparedStatement.executeQuery();) {

            while (resultSet.next()) {
                String studentId = resultSet.getString("studentId");
                String studentName = resultSet.getString("studentName");
                String studentSurname = resultSet.getString("studentSurname");
                String studentCourse = resultSet.getString("studentCourse");
                double studentMark = resultSet.getDouble("studentMark");
                Student student = new Student(studentId, studentName, studentSurname, studentCourse, studentMark);
                studentList.add(student);
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            System.out.println("Error from getAllStudents method");
        }
        return studentList;
    }

    @Override
    public Student getStudentbyId(String id) {

        Student student = null;
        String query = "SELECT * FROM student WHERE studentId = ?";
        
        try (Connection connection = DriverManager.getConnection(url_); 
                PreparedStatement preparedStatement = connection.prepareStatement(query);) {

            preparedStatement.setString(1, id);

            try (ResultSet resultSet = preparedStatement.executeQuery();) {
                if (resultSet.next()) {
                    String studentId = resultSet.getString("studentId");
                    String studentName = resultSet.getString("studentName");
                    String studentSurname = resultSet.getString("studentSurname");
                    String studentCourse = resultSet.getString("studentCourse");
                    double studentMark = resultSet.getDouble("studentMark");
                    student = new Student(studentId, studentName, studentSurname, studentCourse, studentMark);
                }
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }

        return student;
    }

    @Override
    public int addStudent(Student student) {
        int rowAffected = 0;

        String query = "INSERT INTO student (\n"
                + "                        studentId,\n"
                + "                        studentName,\n"
                + "                        studentSurname,\n"
                + "                        studentCourse,\n"
                + "                        studentMark\n"
                + "                    )\n"
                + "                    VALUES (\n"
                + "                        ?,\n"
                + "                        ?,\n"
                + "                        ?,\n"
                + "                        ?,\n"
                + "                        ?\n"
                + "                    );";
      
                
                
        try (Connection connection = DriverManager.getConnection(url_); 
                PreparedStatement preparedStatement = connection.prepareStatement(query);) {

            preparedStatement.setString(1, student.getId());
            preparedStatement.setString(2, student.getName());
            preparedStatement.setString(3, student.getSurname());
            preparedStatement.setString(4, student.getCourse());
            preparedStatement.setDouble(5, student.getMark());
            rowAffected = preparedStatement.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }

        return rowAffected;
    }

    @Override
    public int updateStudent(Student student) {
        int rowAffected = 0;

        String query = "UPDATE student SET\n"
                + "       studentName = ?,\n"
                + "       studentSurname = ?,\n"
                + "       studentCourse = ?,\n"
                + "       studentMark = ?\n"
                + " WHERE studentId = ?;";

        try (Connection connection = DriverManager.getConnection(url_); 
                PreparedStatement preparedStatement = connection.prepareStatement(query);) {
           
            preparedStatement.setString(1, student.getName());
            preparedStatement.setString(2, student.getSurname());
            preparedStatement.setString(3, student.getCourse());
            preparedStatement.setDouble(4, student.getMark());
            preparedStatement.setString(5, student.getId());
            rowAffected = preparedStatement.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return rowAffected;
    }

    @Override
    public boolean deleteStudent(String id) {

        try {
            Class.forName("org.sqlite.JDBC");
        } catch (ClassNotFoundException e) {
            System.out.println(e.getMessage());
        }

        String query = "DELETE FROM student WHERE studentId = ?";
        try (Connection connection = DriverManager.getConnection(url_); PreparedStatement preparedStatement = connection.prepareStatement(query);) {

            preparedStatement.setString(1, id);

            querySuccess = preparedStatement.executeUpdate() == 1;
            System.out.println("Student deleted: " + querySuccess);
        } catch (SQLException e) {
            System.err.println("SQL Exception: " + e.getMessage());
        }
        return querySuccess;
    }

}
