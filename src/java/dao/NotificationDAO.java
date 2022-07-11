/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import dto.Notification;
import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import utils.DBUtilities;

/**
 *
 * @author duong
 */
public class NotificationDAO implements Serializable{
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
    
    public ArrayList<Notification> getAllNoti() throws Exception {
        ArrayList listNoti = new ArrayList();
        String sql = "Select n.id,n.description, u.email, u.name, n.date, n.content, n.user_id from notification n"
                + " INNER JOIN users u ON u.id = n.user_id";
        try {
            conn = DBUtilities.makeConnection();
            preStm = conn.prepareStatement(sql);
            rs = preStm.executeQuery();
            while (rs.next()) {
                Notification noti = new Notification();
                noti.setNotiID(rs.getInt("id"));
                noti.setDescription(rs.getString("description"));
                noti.setEmail(rs.getString("email"));
                noti.setNameUser(rs.getString("name"));
                noti.setDate(rs.getDate("date").toString());
                noti.setContent(rs.getString("content"));
                noti.setUserID(rs.getInt("user_id"));
                listNoti.add(noti);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeConnection();
        }
        return listNoti;
    }
    
    public Notification getNotiFindByID(int id) throws Exception {
        Notification noti = new Notification();
        String sql = "Select n.id,n.description, u.email, u.name, n.date, n.content, n.user_id from notification n"
                + " INNER JOIN users u ON u.id = n.user_id where n.id = ?";
        try {
            conn = DBUtilities.makeConnection();
            preStm = conn.prepareStatement(sql);
            preStm.setInt(1, id);
            rs = preStm.executeQuery();
            if (rs.next()) {
                noti.setNotiID(rs.getInt("id"));
                noti.setDescription(rs.getString("description"));
                noti.setEmail(rs.getString("email"));
                noti.setNameUser(rs.getString("name"));
                noti.setDate(rs.getDate("date").toString());
                noti.setContent(rs.getString("content"));
                noti.setUserID(rs.getInt("user_id"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeConnection();
        }
        return noti;
    }
}
