/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Entities.AppUser;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Admin
 */
public class AppUserDAOImpl implements AppUserDAO {

    private final String URL = "jdbc:sqlite:C:/Users/Admin/Documents/NetBeansProjects/Week7_JSPSessions/StudentModuleManagementDB.db";

    @Override
    public AppUser getAppUserbyUsername(String uName, String pass) {
        try {
            Class.forName("org.sqlite.JDBC");
        } catch (ClassNotFoundException e) {
            System.out.println(e.getMessage());
        }

        AppUser appUser = null;
        String query = "SELECT * FROM appUser WHERE username = ? and password = ?";
        try (Connection connection = DriverManager.getConnection(URL); PreparedStatement preparedStatement = connection.prepareStatement(query);) {

            preparedStatement.setString(1, uName);
            preparedStatement.setString(2, pass);

            try (ResultSet resultSet = preparedStatement.executeQuery();) {
                if (resultSet.next()) {
                    String username = resultSet.getString("username");
                    String password = resultSet.getString("password");
                    String userType = resultSet.getString("userType");
                    appUser = new AppUser(username, password, userType);
                }
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }

        return appUser;
    }

    @Override
    public boolean addAppUser(AppUser appUser) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public boolean updateAppUser(AppUser appUser) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public boolean deleteAppUser(String username) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}
