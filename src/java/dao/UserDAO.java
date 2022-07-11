/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import dto.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import utils.DBUtilities;


public class UserDAO {
    private Connection conn;
    private PreparedStatement preStm;
    private ResultSet rs;

    private void closeConnection() throws Exception {
        if (rs != null) {
            rs.close();
        }
        if (preStm != null) {
            preStm.close();
        }
        if (conn != null) {
            conn.close();
        }
    }
    public String getRole(User user) throws Exception {
        String role = "";
        String sql = "SELECT role_name FROM users u"
                + " INNER JOIN role r ON r.role_id = u.role_id"
                + " WHERE email = ? AND password = ? AND status = ?";
        try {
            conn = DBUtilities.makeConnection();
            preStm = conn.prepareStatement(sql);
            preStm.setString(1, user.getEmail());
            preStm.setString(2, user.getPassword());
            preStm.setBoolean(3, Boolean.TRUE);
            rs = preStm.executeQuery();
            if (rs.next()) {
                role = rs.getString("role_name");
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
           closeConnection();
        }
        return role;
    }
}
