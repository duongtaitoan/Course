/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtilities {
    private static final String DATABASE_DRIVER = "com.mysql.cj.jdbc.Driver";
    private static final String DATABASE_URL = "jdbc:mysql://localhost:3306/onlineshop";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "1234";
    
    public static Connection makeConnection() throws SQLException {
        Connection conn = null;
        try {
            Class.forName(DATABASE_DRIVER);
            conn = DriverManager.getConnection(DATABASE_URL, USERNAME, PASSWORD);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return conn;
    }
  
}
