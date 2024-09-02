/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package DAO;

import Entities.Student;
import java.util.List;

/**
 *
 * @author Admin
 */
public interface StudentDAO {
    
    List<Student> getAllStudents();
    Student getStudentbyId(String id);
    int addStudent(Student student);
    int updateStudent(Student student);
    boolean deleteStudent(String id);
}
