/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import dto.LessonLearning;
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
public class LessonLearnDAO implements Serializable{
    
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

    public ArrayList<LessonLearning> getListLessonOfType(int lessonID) throws Exception {
        ArrayList<LessonLearning> listLessonLearn = new ArrayList<>();
        String sql = "SELECT ll.lesson_learning_id, ll.lessonID,ll.lessonOfType"
                + " FROM onlineshop.lessonlearning ll"
                + " INNER JOIN onlineshop.lesson l ON ll.lessonID = l.lessonID"
                + " WHERE l.lessonID = ?";
        try {
            conn = DBUtilities.makeConnection();
            preStm = conn.prepareStatement(sql);
            preStm.setInt(1, lessonID);
            rs = preStm.executeQuery();
            while (rs.next()) {
                LessonLearning learning = new LessonLearning();
                learning.setLessonLearningID(rs.getInt("lesson_learning_id"));
                learning.setLessonID(rs.getInt("lessonID"));
                learning.setLessonType(rs.getString("lessonOfType"));
                listLessonLearn.add(learning);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeConnection();
        }
        return listLessonLearn;
    }
    
}
