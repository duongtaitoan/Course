/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dto;

import java.io.Serializable;

/**
 *
 * @author duong
 */
public class Course implements Serializable{
    private int courseID;
    private int expertID;
    private String courseType;
    private String courseName;
    private String description;
    private String content;
    private String image;
    private String nameMentor;
    private int rating;
    private float price;
    private float discount;
    private boolean isAvailable;
    private int count;
    private int mentorID;
    
    private String nameCourse;
    private String imageCourse;

    private Mentor mentor;
    private Lesson lesson;

    public Course(int courseID, int expertID, String courseType, String courseName, String description, String content, String image, String nameMentor, int timeLearing, int rating, float price, float discount, boolean isAvailable, int count, Mentor mentor) {
        this.courseID = courseID;
        this.expertID = expertID;
        this.courseType = courseType;
        this.courseName = courseName;
        this.description = description;
        this.content = content;
        this.image = image;
        this.nameMentor = nameMentor;
        this.rating = rating;
        this.price = price;
        this.discount = discount;
        this.isAvailable = isAvailable;
        this.count = count;
        this.mentor = mentor;
    }
    
    public Course(String nameCourse, String imageCourse) {
        this.nameCourse = nameCourse;
        this.imageCourse = imageCourse;
    }
    

    public Course() {
    }

    public Course(int courseID, String courseType, String courseName, String description, String content, String image, String nameMentor, int rating, float price, float discount, boolean isAvailable, int count, int mentorID, String nameCourse, String imageCourse, Lesson lesson) {
        this.courseID = courseID;
        this.courseType = courseType;
        this.courseName = courseName;
        this.description = description;
        this.content = content;
        this.image = image;
        this.nameMentor = nameMentor;
        this.rating = rating;
        this.price = price;
        this.discount = discount;
        this.isAvailable = isAvailable;
        this.count = count;
        this.mentorID = mentorID;
        this.nameCourse = nameCourse;
        this.imageCourse = imageCourse;
        this.lesson = lesson;
    }

    public Course(int courseID, int expertID, String courseType, String courseName, String description, String content, String image, String nameMentor, int rating, float price, float discount, boolean isAvailable, int count, int mentorID, String nameCourse, String imageCourse, Mentor mentor, Lesson lesson) {
        this.courseID = courseID;
        this.expertID = expertID;
        this.courseType = courseType;
        this.courseName = courseName;
        this.description = description;
        this.content = content;
        this.image = image;
        this.nameMentor = nameMentor;
        this.rating = rating;
        this.price = price;
        this.discount = discount;
        this.isAvailable = isAvailable;
        this.count = count;
        this.mentorID = mentorID;
        this.nameCourse = nameCourse;
        this.imageCourse = imageCourse;
        this.mentor = mentor;
        this.lesson = lesson;
    }

    public Course(int courseID, float price, float discount, Mentor mentor, Lesson lesson) {
        this.courseID = courseID;
        this.price = price;
        this.discount = discount;
        this.mentor = mentor;
        this.lesson = lesson;
    }
    
    

    
   

    public int getCourseID() {
        return courseID;
    }

    public void setCourseID(int courseID) {
        this.courseID = courseID;
    }

    public int getExpertID() {
        return expertID;
    }

    public void setExpertID(int expertID) {
        this.expertID = expertID;
    }

    public String getCourseType() {
        return courseType;
    }

    public void setCourseType(String courseType) {
        this.courseType = courseType;
    }

    public String getCourseName() {
        return courseName;
    }

    public void setCourseName(String courseName) {
        this.courseName = courseName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public float getDiscount() {
        return discount;
    }

    public void setDiscount(float discount) {
        this.discount = discount;
    }

    public boolean isIsAvailable() {
        return isAvailable;
    }

    public void setIsAvailable(boolean isAvailable) {
        this.isAvailable = isAvailable;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public String getNameMentor() {
        return nameMentor;
    }

    public void setNameMentor(String nameMentor) {
        this.nameMentor = nameMentor;
    }

    public int getRating() {
        return rating;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }

    public String getNameCourse() {
        return nameCourse;
    }

    public void setNameCourse(String nameCourse) {
        this.nameCourse = nameCourse;
    }

    public String getImageCourse() {
        return imageCourse;
    }

    public void setImageCourse(String imageCourse) {
        this.imageCourse = imageCourse;
    }

    public Mentor getMentor() {
        return mentor;
    }

    public void setMentor(Mentor mentor) {
        this.mentor = mentor;
    }

    public Lesson getLesson() {
        return lesson;
    }

    public void setLesson(Lesson lesson) {
        this.lesson = lesson;
    }

  
    public int getMentorID() {
        return mentorID;
    }

    public void setMentorID(int mentorID) {
        this.mentorID = mentorID;
    }
    
    
}
