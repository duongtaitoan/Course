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
public class CourseDAO implements Serializable {

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

    public ArrayList<Course> getListCourse(String title) throws Exception {
        ArrayList<Course> listcourse = new ArrayList<>();
        String sql = "SELECT c.id, c.course_type , c.course_name ,c.description, "
                + " c.content, c.price, c.discount, c.is_available, c.mentor_id, m.mentor_name,"
                + " c.image, c.rating FROM onlineshop.course c"
                + " inner join onlineshop.mentor m on m.mentor_id = c.mentor_id"
                + " WHERE c.course_type LIKE ?";
        try {
            conn = DBUtilities.makeConnection();
            preStm = conn.prepareStatement(sql);
            preStm.setString(1, "%" + title + "%");
            rs = preStm.executeQuery();
            while (rs.next()) {
                Course course = new Course();
                course.setCourseID(rs.getInt("id"));
                course.setCourseType(rs.getString("course_type"));
                course.setCourseName(rs.getString("course_name"));
                course.setDescription(rs.getString("description"));
                course.setContent(rs.getString("content"));
                course.setImage(rs.getString("image"));
                course.setPrice(rs.getFloat("price"));
                course.setDiscount(rs.getFloat("discount"));
                course.setIsAvailable(rs.getBoolean("is_available"));
                course.setMentorID(rs.getInt("mentor_id"));
                course.setNameMentor(rs.getString("mentor_name"));
                course.setRating(rs.getInt("rating"));
                listcourse.add(course);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeConnection();
        }
        return listcourse;
    }
    
    public ArrayList<Course> getCourseDiscount() throws Exception {
        ArrayList<Course> listcourse = new ArrayList<>();
        String sql = "SELECT c.id, c.course_type , c.course_name ,c.description, "
                + " c.content, c.price, c.discount, c.is_available, c.mentor_id, m.mentor_name,"
                + " c.image, c.rating FROM onlineshop.course c"
                + " inner join onlineshop.mentor m on m.mentor_id = c.mentor_id"
                + " ORDER BY c.discount desc LIMIT 8";
        try {
            conn = DBUtilities.makeConnection();
            preStm = conn.prepareStatement(sql);
            rs = preStm.executeQuery();
            while (rs.next()) {
                Course course = new Course();
                course.setCourseID(rs.getInt("id"));
                course.setCourseType(rs.getString("course_type"));
                course.setCourseName(rs.getString("course_name"));
                course.setDescription(rs.getString("description"));
                course.setContent(rs.getString("content"));
                course.setImage(rs.getString("image"));
                course.setPrice(rs.getFloat("price"));
                course.setDiscount(rs.getFloat("discount"));
                course.setIsAvailable(rs.getBoolean("is_available"));
                course.setMentorID(rs.getInt("mentor_id"));
                course.setNameMentor(rs.getString("mentor_name"));
                course.setRating(rs.getInt("rating"));
                listcourse.add(course);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeConnection();
        }
        return listcourse;
    }

    public ArrayList<Course> getTopListCourse() throws Exception {
        ArrayList<Course> listcourse = new ArrayList<>();
        String sql = "SELECT c.id, c.course_type, c.course_name, c.description, c.content,"
                + " c.image, c.price, c.discount, c.is_available, m.mentor_name, c.rating, c.mentor_id"
                + " FROM onlineshop.course c inner join onlineshop.order o on o.order_id = c.id"
                + " inner join onlineshop.mentor m on m.mentor_id = c.mentor_id"
                + " ORDER BY o.course_id asc limit 8";
        try {
            conn = DBUtilities.makeConnection();
            preStm = conn.prepareStatement(sql);
            rs = preStm.executeQuery();
            while (rs.next()) {
                Course course = new Course();
                course.setCourseID(rs.getInt("id"));
                course.setCourseType(rs.getString("course_type"));
                course.setCourseName(rs.getString("course_name"));
                course.setDescription(rs.getString("description"));
                course.setContent(rs.getString("content"));
                course.setImage(rs.getString("image"));
                course.setPrice(rs.getFloat("price"));
                course.setDiscount(rs.getFloat("discount"));
                course.setIsAvailable(rs.getBoolean("is_available"));
                course.setNameMentor(rs.getString("mentor_name"));
                course.setRating(rs.getInt("rating"));
                course.setMentorID(rs.getInt("mentor_id"));
                listcourse.add(course);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeConnection();
        }
        return listcourse;
    }

    public ArrayList<Course> getByField(String field, String nameCourse) throws Exception {
        ArrayList<Course> listcourse = new ArrayList<>();
        String sql = "SELECT * FROM onlineshop.course c"
                + " inner join onlineshop.mentor m on m.mentor_id = c.mentor_id"
                + " WHERE c.course_type LIKE ?";

        if (field.equals("desc")) {
            sql += " ORDER BY price DESC";
        }
        if (field.equals("asc")) {
            sql += " ORDER BY price ASC";
        }
        if (field.equals("new")) {
            sql += " ORDER BY id DESC";
        }
        try {
            conn = DBUtilities.makeConnection();
            preStm = conn.prepareStatement(sql);
            preStm.setString(1, nameCourse);
            rs = preStm.executeQuery();
            while (rs.next()) {
                Course course = new Course();
                course.setCourseID(rs.getInt("id"));
                course.setCourseType(rs.getString("course_type"));
                course.setCourseName(rs.getString("course_name"));
                course.setDescription(rs.getString("description"));
                course.setContent(rs.getString("content"));
                course.setImage(rs.getString("image"));
                course.setPrice(rs.getFloat("price"));
                course.setDiscount(rs.getFloat("discount"));
                course.setIsAvailable(rs.getBoolean("is_available"));
                course.setNameMentor(rs.getString("mentor_name"));
                course.setRating(rs.getInt("rating"));
                course.setMentorID(rs.getInt("mentor_id"));
                listcourse.add(course);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeConnection();
        }
        return listcourse;
    }

    public int countCourse(int mentorID) throws Exception {
        int count = 0;
        String sql = "SELECT COUNT(*) AS id FROM onlineshop.course where mentor_id = ?";
        try {
            conn = DBUtilities.makeConnection();
            preStm = conn.prepareStatement(sql);
            preStm.setInt(1, mentorID);
            rs = preStm.executeQuery();
            if (rs.next()) {
                count = rs.getInt("id");
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeConnection();
        }
        return count;
    }
    
    public int countFeedbackCourse(int id) throws Exception {
        int count = 0;
        String sql = "SELECT COUNT(*) as courseID FROM onlineshop.course c"
                + " INNER JOIN onlineshop.feedback f ON c.id = f.courseID"
                + " WHERE c.id = ?";
        try {
            conn = DBUtilities.makeConnection();
            preStm = conn.prepareStatement(sql);
            preStm.setInt(1, id);
            rs = preStm.executeQuery();
            if (rs.next()) {
                count = rs.getInt("courseID");
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeConnection();
        }
        return count;
    }
    
    public int countStudentCourse(int id) throws Exception {
        int count = 0;
        String sql = "SELECT f.userID  FROM onlineshop.course c"
                + " INNER JOIN onlineshop.feedback f ON c.id = f.courseID"
                + " WHERE c.id = ? GROUP BY f.userID HAVING COUNT(f.userID)> 1";
        try {
            conn = DBUtilities.makeConnection();
            preStm = conn.prepareStatement(sql);
            preStm.setInt(1, id);
            rs = preStm.executeQuery();
            while (rs.next()) {
                count = rs.getInt("f.userID");
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeConnection();
        }
        return count;
    }
    
    public int countLessonCourse(int id) throws Exception {
        int count = 0;
        String sql = "SELECT COUNT(*) as mentor_id From onlineshop.course c"
                + " INNER JOIN onlineshop.mentor m on c.mentor_id = m.mentor_id WHERE c.mentor_id = ?";
        try {
            conn = DBUtilities.makeConnection();
            preStm = conn.prepareStatement(sql);
            preStm.setInt(1, id);
            rs = preStm.executeQuery();
            if (rs.next()) {
                count = rs.getInt("mentor_id");
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeConnection();
        }
        return count;
    }
    
    public int getLessonIDByCourseID(int id) throws Exception {
        int lessonID = 0;
        String sql = "SELECT lessonID From onlineshop.course WHERE id = ?";
        try {
            conn = DBUtilities.makeConnection();
            preStm = conn.prepareStatement(sql);
            preStm.setInt(1, id);
            rs = preStm.executeQuery();
            if (rs.next()) {
                lessonID = rs.getInt("lessonID");
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeConnection();
        }
        return lessonID;
    }

    public ArrayList<Course> listCourseName(String courseType) throws Exception {
        ArrayList<Course> listName = new ArrayList<>();
        String sql = "SELECT course_name FROM onlineshop.course where course_type LIKE ?";
        try {
            conn = DBUtilities.makeConnection();
            preStm = conn.prepareStatement(sql);
            preStm.setString(1, "%" + courseType + "%");
            rs = preStm.executeQuery();
            while (rs.next()) {
                Course course = new Course();
                course.setCourseName(rs.getString("course_name"));
                listName.add(course);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeConnection();
        }
        return listName;
    }

    public Course findCourseByID(int courseID) throws Exception {
        Course course = new Course();
        String sql = "SELECT c.id, c.price, c.discount, c.content, c.rating, m.mentor_id, m.rating,"
                + " l.lessonID, l.time_lesson, l.list_lesson"
                + " FROM onlineshop.course c"
                + " INNER JOIN onlineshop.mentor m ON c.mentor_id = m.mentor_id"
                + " INNER JOIN onlineshop.lesson l ON l.lessonID = c.lessonID"
                + " WHERE c.id = ?";
        try {
            conn = DBUtilities.makeConnection();
            preStm = conn.prepareStatement(sql);
            preStm.setInt(1, courseID);
            rs = preStm.executeQuery();
            if (rs.next()) {
                Mentor mentor = new Mentor();
                Lesson lesson = new Lesson();
//                get course by id
                course.setCourseID(rs.getInt("id"));
                course.setPrice(rs.getFloat("price"));
                course.setDiscount(rs.getFloat("discount"));
                course.setContent(rs.getString("content"));
                course.setRating(rs.getInt("c.rating"));
                // get mentor by id
                mentor.setMentorID(rs.getInt("mentor_id"));
                mentor.setRating(rs.getInt("m.rating"));
                course.setMentor(mentor);
//                get less by id
                lesson.setLessonID(rs.getInt("lessonID"));
                lesson.setTimeLesson(rs.getInt("time_lesson"));
                lesson.setListLesson(rs.getInt("list_lesson"));
                course.setLesson(lesson);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeConnection();
        }
        return course;
    }
        
}
