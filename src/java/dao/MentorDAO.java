/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import dto.Course;
import dto.Lesson;
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
public class MentorDAO implements Serializable{
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
    
    public ArrayList<Mentor> getListMentor() throws Exception{
        ArrayList<Mentor> listMentor = new ArrayList<>();
        String sql = "SELECT * FROM onlineshop.mentor";
        try {
            conn = DBUtilities.makeConnection();
            preStm = conn.prepareStatement(sql);
            rs = preStm.executeQuery();
            while (rs.next()) {
                Mentor mentor = new Mentor();
                mentor.setMentorID(rs.getInt("mentor_id"));
                mentor.setMentorName(rs.getString("mentor_name"));
                mentor.setMentorContent(rs.getString("mentor_content"));
                mentor.setDescription(rs.getString("description"));
                mentor.setImage(rs.getString("image"));
                mentor.setRating(rs.getInt("rating"));
                listMentor.add(mentor);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            closeConnection();
        }
        return listMentor;
    }
    
    public ArrayList<Mentor> getTopMentor() throws Exception{
        ArrayList<Mentor> listMentor = new ArrayList<>();
        String sql = "SELECT * FROM onlineshop.mentor ORDER BY RAND() asc limit 4";
        try {
            conn = DBUtilities.makeConnection();
            preStm = conn.prepareStatement(sql);
            rs = preStm.executeQuery();
            while (rs.next()) {
                Mentor mentor = new Mentor();
                mentor.setMentorID(rs.getInt("mentor_id"));
                mentor.setMentorName(rs.getString("mentor_name"));
                mentor.setMentorContent(rs.getString("mentor_content"));
                mentor.setDescription(rs.getString("description"));
                mentor.setImage(rs.getString("image"));
                mentor.setRating(rs.getInt("rating"));
                listMentor.add(mentor);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            closeConnection();
        }
        return listMentor;
    }
    
    public ArrayList<Mentor> getMentorDetails(int mentorID) throws Exception{
        ArrayList<Mentor> listMentor = new ArrayList<>();
        String sql = "SELECT * FROM onlineshop.mentor where mentor_id = ?";
        try {
            conn = DBUtilities.makeConnection();
            preStm = conn.prepareStatement(sql);
            preStm.setInt(1, mentorID);
            rs = preStm.executeQuery();
            while (rs.next()) {
                Mentor mentor = new Mentor();
                mentor.setMentorID(rs.getInt("mentor_id"));
                mentor.setMentorName(rs.getString("mentor_name"));
                mentor.setMentorContent(rs.getString("mentor_content"));
                mentor.setDescription(rs.getString("description"));
                mentor.setImage(rs.getString("image"));
                mentor.setRating(rs.getInt("rating"));
                mentor.setWorking(rs.getString("working"));
                listMentor.add(mentor);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            closeConnection();
        }
        return listMentor;
    }
    
    public Mentor getMentorByID(int mentorID) throws Exception{
        Mentor mentor = new Mentor();
        String sql = "SELECT * FROM onlineshop.mentor where mentor_id = ?";
        try {
            conn = DBUtilities.makeConnection();
            preStm = conn.prepareStatement(sql);
            preStm.setInt(1, mentorID);
            rs = preStm.executeQuery();
            if (rs.next()) {
                mentor.setMentorID(rs.getInt("mentor_id"));
                mentor.setMentorName(rs.getString("mentor_name"));
                mentor.setMentorContent(rs.getString("mentor_content"));
                mentor.setDescription(rs.getString("description"));
                mentor.setImage(rs.getString("image"));
                mentor.setRating(rs.getInt("rating"));
                mentor.setWorking(rs.getString("working"));
                mentor.setTrailer(rs.getString("trailer"));
                mentor.setAchievements(rs.getString("achievements"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            closeConnection();
        }
        return mentor;
    }
    
    public String getNameOfMentor(int mentorID) throws Exception{
        String nameMentor ="";
        String sql = "SELECT * FROM onlineshop.mentor where mentor_id = ?";
        try {
            conn = DBUtilities.makeConnection();
            preStm = conn.prepareStatement(sql);
            preStm.setInt(1, mentorID);
            rs = preStm.executeQuery();
            if (rs.next()) {
                nameMentor = rs.getString("mentor_name");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            closeConnection();
        }
        return nameMentor;
    }
    
    public ArrayList<Course> getCourseMentor(int mentorID) throws Exception{
        ArrayList<Course> listMentor = new ArrayList<>();
        String sql = "SELECT c.id, c.course_type , c.course_name ,c.description,"
                + " c.content, c.price, c.discount, c.image, c.lessonID, l.time_lesson"
                + " FROM onlineshop.mentor m "
                + " INNER JOIN onlineshop.course c ON m.mentor_id = c.mentor_id"
                + " INNER JOIN onlineshop.lesson l ON l.lessonID = c.lessonID"
                + " WHERE m.mentor_id = ?";
        try {
            conn = DBUtilities.makeConnection();
            preStm = conn.prepareStatement(sql);
            preStm.setInt(1, mentorID);
            rs = preStm.executeQuery();
            while (rs.next()) {
                Course course = new Course();
                Lesson lesson = new Lesson();
                // add to course
                course.setCourseID(rs.getInt("id"));
                course.setCourseType(rs.getString("course_type"));
                course.setCourseName(rs.getString("course_name"));
                course.setDescription(rs.getString("description"));
                course.setContent(rs.getString("content"));
                course.setPrice(rs.getFloat("price"));
                course.setDiscount(rs.getFloat("discount"));
                course.setImage(rs.getString("image"));
                
                // add lesson
                lesson.setLessonID(rs.getInt("lessonID"));
                lesson.setTimeLesson(rs.getInt("time_lesson"));
                course.setLesson(lesson);
                
                listMentor.add(course);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            closeConnection();
        }
        return listMentor;
    }
}
