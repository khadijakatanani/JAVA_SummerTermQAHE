/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package DAO;

import Entities.AppUser;

/**
 *
 * @author Admin
 */
public interface AppUserDAO {
        
    AppUser getAppUserbyUsername(String uName, String pass);
    boolean addAppUser(AppUser appUser);
    boolean updateAppUser(AppUser appUser);
    boolean deleteAppUser(String username);
}
