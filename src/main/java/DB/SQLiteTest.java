/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DB;

import DAO.StudentDAOImpl;
import Entities.Student;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.List;

public class SQLiteTest {

    public static void main(String[] args) {
        
        String connection = SQLLiteDBDriver.SetupDriver();

//        try {
//            Class.forName("org.sqlite.JDBC");
//            String url = "jdbc:sqlite:C:/Users/Admin/Documents/NetBeansProjects/Week7_JSPSessions/StudentModuleManagementDB.db";
//            Connection conn = DriverManager.getConnection(url);
//            if (conn != null) {
//                System.out.println("Connection to SQLite has been established.");
//            }
//        } catch (SQLException | ClassNotFoundException e) {
//            System.out.println(e.getMessage());
//        }
    }
}
