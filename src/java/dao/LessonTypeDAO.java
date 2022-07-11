/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import dto.LessonDetails;
import dto.LessonType;
import dto.Mentor;
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
public class LessonTypeDAO implements Serializable {

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

    public ArrayList<LessonType> getListLessDetails(int lessonID) throws Exception {
        ArrayList<LessonType> listLessonType = new ArrayList<>();
        String sql = "SELECT lt.lesson_type_id, lt.lesson_type_content, lt.lessonID,"
                + " ld.lesson_content, ld.time_details_lesson, ld.lesson_details_id, ld.isActive"
                + " FROM onlineshop.lessontype lt"
                + " INNER JOIN onlineshop.lessondetails ld ON ld.lesson_type_id = lt.lesson_type_id"
                + " WHERE lt.lessonID = ?";
        try {
            conn = DBUtilities.makeConnection();
            preStm = conn.prepareStatement(sql);
            preStm.setInt(1, lessonID);
            rs = preStm.executeQuery();
            ArrayList<LessonDetails> listLessDetails = new ArrayList<>();
            int currentLessDetailsID = 0;
            int currentIndex = -1;
            
            while (rs.next()) {
                int lessTypeID = rs.getInt("lt.lesson_type_id");
                
                LessonDetails lessDetails = new LessonDetails();

                lessDetails.setLessonContent(rs.getString("ld.lesson_content"));
                lessDetails.setLessonDetailsID(rs.getInt("ld.lesson_details_id"));
                lessDetails.setIsActive(rs.getBoolean("ld.isActive"));
                lessDetails.setLessonTypeID(lessTypeID);
                lessDetails.setTimeDetailsLesson(rs.getInt("ld.time_details_lesson"));

                if (currentLessDetailsID == 0 || currentLessDetailsID != lessTypeID) {
                    currentLessDetailsID = lessTypeID;
                    
                    LessonType lessType = new LessonType();
                    lessType.setLessonID(rs.getInt("lt.lessonID"));
                    lessType.setLessonTypeContent(rs.getString("lt.lesson_type_content"));
                    lessType.setLessonTypeID(rs.getInt("lt.lesson_type_id"));

                    listLessDetails = new ArrayList<>();
                    listLessDetails.add(lessDetails);
                    
                    lessType.setListLessDetails(listLessDetails);
                    listLessonType.add(lessType);
                    
                    currentIndex += 1;
                } else if (currentLessDetailsID != 0 && currentLessDetailsID == lessTypeID) {
                    listLessDetails.add(lessDetails);
                    listLessonType.get(currentIndex).setListLessDetails(listLessDetails);
                }

            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeConnection();
        }
        return listLessonType;
    }

}
