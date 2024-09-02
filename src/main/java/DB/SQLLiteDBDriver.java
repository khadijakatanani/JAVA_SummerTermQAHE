/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Admin
 */
public class SQLLiteDBDriver {

    private final static String URL = 
            "jdbc:sqlite:C:/Users/Admin/Documents/NetBeansProjects/Week7_JSPSessions/StudentModuleManagementDB.db";

    public static String SetupDriver() {
        try {
            Class.forName("org.sqlite.JDBC");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(SQLLiteDBDriver.class.getName()).log(Level.SEVERE, null, ex);
        }
        return URL;

    }
}
