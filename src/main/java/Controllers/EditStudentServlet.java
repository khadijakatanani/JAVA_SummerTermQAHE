/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controllers;

import DAO.StudentDAOImpl;
import Entities.Student;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/editStudent")
public class EditStudentServlet extends HttpServlet {

    StudentDAOImpl allStudents = new StudentDAOImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Get the student ID from the request
        String studentId = request.getParameter("id");

        // Find the student based on the ID
        Student student = allStudents.getStudentbyId(studentId);

        if (student != null) {
            // Set student details as request attributes to prefill the form
            request.setAttribute("id", student.getId());
            request.setAttribute("name", student.getName());            
            request.setAttribute("surname", student.getSurname());
            request.setAttribute("course", student.getCourse());
            request.setAttribute("mark", student.getMark());
        } else {
            // If the student ID doesn't exist, set an error message
            request.setAttribute("errorMessage", "Student ID not found");
        }

        // Forward the request back to the JSP page
        request.getRequestDispatcher("editStudent.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Get the student details from the form submission
        String studentId = request.getParameter("studentId");
        String name = request.getParameter("name");        
        String surname = request.getParameter("surname");
        String course = request.getParameter("course");
        double mark = Double.parseDouble(request.getParameter("mark"));
        
        Student student = new Student(studentId, name, surname, course, mark);

        // Update the student details in the map (or in the database in a real application)
        int updated = allStudents.updateStudent(student);
        request.setAttribute("updated", updated);

        // Redirect or forward to a confirmation page or back to the form
        response.sendRedirect("StudentMenu.jsp");
    }
}
