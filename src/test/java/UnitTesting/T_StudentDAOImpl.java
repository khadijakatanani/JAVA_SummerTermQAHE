



/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/UnitTests/JUnit3TestClass.java to edit this template
 */
import DAO.StudentDAOImpl;
import Entities.Student;
import java.util.List;
import java.util.stream.Stream;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertFalse;
import static org.junit.jupiter.api.Assertions.assertNotEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertTrue;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestInstance;
import org.junit.jupiter.api.TestInstance.Lifecycle;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.MethodSource;
import org.junit.jupiter.params.provider.ValueSource;

/**
 *
 * @author Admin
 */
// @TestInstance(Lifecycle.PER_CLASS)
public class T_StudentDAOImpl {

    StudentDAOImpl studentDAO;

    @BeforeEach
    public void setup() {        
        studentDAO = new StudentDAOImpl();
    }

    @Disabled
    @Test
    public void t_getAllStudents_ReturnsPopulatedStudentList() {
        // Arrange

        // Act
        List<Student> students = studentDAO.getAllStudents();

        // Assert
        assertNotNull(students);
        // assertTrue(students.isEmpty());

        //assertNotEquals(2, students.size());
        //assertEquals("Alice Mary", students.get(0).getName());
        assertNotEquals(56.8, students.get(0).getMark(), "The mark is false!");
//        assertEquals(85.5, students.get(0).getMark(), "The mark is false!");
    }

    @Disabled
    @ParameterizedTest
    @ValueSource(strings = {"S001", "S003", "S006"})  // Example IDs to test
    public void t_getStudentbyId_ReturnsStudentObject(String id) {
        // Arrange

        // Act
        Student student = studentDAO.getStudentbyId(id);

        // Assert
        assertNotNull(student, "No student with that student id exists!");
    }

    // @Disabled
    @ParameterizedTest
    @MethodSource("studentProvider")
    public void t_addStudent_ReturnsRowNumberAffected(Student student) {
        // Arrange

        // Act 
        int rowsAffected = studentDAO.addStudent(student);

        // Assert
        assertEquals(1, rowsAffected, "No student is recorded!");
        // assertNotEquals(1, rowsAffected, "The entry is not successful");

    }

    // Method to provide test data
    static Stream<Student> studentProvider() {
        return Stream.of(
                new Student("S007", "Jack", "Thomas", "Economics", 89.9)
        );
    }

    @Disabled
    @ParameterizedTest
    @MethodSource("studentUpdate")
    public void t_updateStudent_ReturnsRowNumberAffected(Student student) {
        // Arrange

        // Act 
        int rowsAffected = studentDAO.updateStudent(student);

        // Assert
        assertEquals(1, rowsAffected, "No student is updated!");
    }

    static Stream<Student> studentUpdate() {
        return Stream.of(
                new Student("S002", "Ivy", "Martinez", "Philosophy", 100),
                new Student("S004", "Grace", "Lee", "English", 100),
                new Student("S005", "Jack", "Thomas", "Art History", 50)
        );
    }

}
