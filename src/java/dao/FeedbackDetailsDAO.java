/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import dto.FeedbackDetails;
import dto.User;
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
public class FeedbackDetailsDAO implements Serializable{
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
    
    public ArrayList<FeedbackDetails> getListFeedbackByCourseID(int courseID) throws Exception{
        ArrayList<FeedbackDetails> listFeedback = new ArrayList<>();
        String sql = "SELECT u.email,u.image, fd.feedbackDetailsID, fd.feedbackContent, fd.rating, fd.dateFeedback"
                + " FROM onlineshop.course c"
                + " INNER JOIN onlineshop.feedback f ON c.id = f.courseID"
                + " INNER JOIN onlineshop.users u ON u.id = f.userID"
                + " INNER JOIN onlineshop.feedbackDetails fd ON f.feedbackDetailsID = fd.feedbackDetailsID"
                + " WHERE c.id = ?";
        try {
            conn = DBUtilities.makeConnection();
            preStm = conn.prepareStatement(sql);
            preStm.setInt(1, courseID);
            rs = preStm.executeQuery();
            while(rs.next()){
                FeedbackDetails feedback = new FeedbackDetails();
                feedback.setFeedbackDetailsID(rs.getInt("fd.feedbackDetailsID"));
                feedback.setFeebackContent(rs.getString("fd.feedbackContent"));
                feedback.setRating(rs.getInt("fd.rating"));
                feedback.setDateFeedback(rs.getDate("fd.dateFeedback").toString());
                
                User user = new User();
                user.setEmail(rs.getString("u.email"));
                user.setImage(rs.getString("u.image"));
                feedback.setUser(user);
                
                listFeedback.add(feedback);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            closeConnection();
        }
        return listFeedback;
    }
    
}
