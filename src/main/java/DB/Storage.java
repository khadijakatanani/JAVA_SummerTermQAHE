/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DB;

import Entities.Student;
import java.util.HashMap;

/**
 *
 * @author Admin
 */
public class Storage {

    public static class DB {

        public static HashMap<String, Student> students_map = new HashMap<>();

        public static void init() {
            students_map.put("S001", new Student("Alice Johnson", "", "Computer Science", 85.6));
            students_map.put("S002", new Student("Bob Smith", "", "Mathematics", 90.4));
            students_map.put("S003", new Student("Charlie Brown", "","Physics", 78.9));
            students_map.put("S004", new Student("Diana Prince", "","Chemistry", 92.3));
            students_map.put("S005", new Student("Eve Davis", "","Biology", 88.7));
            students_map.put("S006", new Student("Frank White", "","History", 74.5));
            students_map.put("S007", new Student("Grace Lee", "","English", 82.1));
            students_map.put("S008", new Student("Henry Wilson", "","Economics", 89.9));
            students_map.put("S009", new Student("Ivy Martinez", "","Philosophy", 80.3));
            students_map.put("S010", new Student("Jack Thomas", "","Art History", 91.0));
        }

        public static Student getStudentBy(String id) {
            return students_map.get(id);
        }

        public static HashMap<String, Student> getAll() {
            return students_map;
        }
        
        
        
        
    }
}
