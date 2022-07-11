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
public class FeedbackDetails implements Serializable{
    private int feedbackDetailsID;
    private String feebackContent;
    private int rating;
    private String dateFeedback;

    Course course;
    User user;
    Feedback feedback;

    public FeedbackDetails(int feedbackDetailsID, String feebackContent, int rating, String dateFeedback, Course course, User user, Feedback feedback) {
        this.feedbackDetailsID = feedbackDetailsID;
        this.feebackContent = feebackContent;
        this.rating = rating;
        this.dateFeedback = dateFeedback;
        this.course = course;
        this.user = user;
        this.feedback = feedback;
    }
    
    
    public FeedbackDetails() {
    }

    public FeedbackDetails(int feedbackDetailsID, String feebackContent, int rating, String dateFeedback ) {
        this.feedbackDetailsID = feedbackDetailsID;
        this.feebackContent = feebackContent;
        this.rating = rating;
        this.dateFeedback = dateFeedback;
    }

    public int getFeedbackDetailsID() {
        return feedbackDetailsID;
    }

    public void setFeedbackDetailsID(int feedbackDetailsID) {
        this.feedbackDetailsID = feedbackDetailsID;
    }

    public String getFeebackContent() {
        return feebackContent;
    }

    public void setFeebackContent(String feebackContent) {
        this.feebackContent = feebackContent;
    }

    public int getRating() {
        return rating;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }

    public String getDateFeedback() {
        return dateFeedback;
    }

    public void setDateFeedback(String dateFeedback) {
        this.dateFeedback = dateFeedback;
    }

    public Course getCourse() {
        return course;
    }

    public void setCourse(Course course) {
        this.course = course;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Feedback getFeedback() {
        return feedback;
    }

    public void setFeedback(Feedback feedback) {
        this.feedback = feedback;
    }
    
    
}
