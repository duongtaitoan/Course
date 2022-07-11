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
public class Feedback implements Serializable{
    private int feedbackID;
    private int courseID;
    private int feedbackDetailsID;
    private int userID;

    public Feedback() {
    }

    public Feedback(int feedbackID, int courseID, int feedbackDetailsID, int userID) {
        this.feedbackID = feedbackID;
        this.courseID = courseID;
        this.feedbackDetailsID = feedbackDetailsID;
        this.userID = userID;
    }

    public int getFeedbackID() {
        return feedbackID;
    }

    public void setFeedbackID(int feedbackID) {
        this.feedbackID = feedbackID;
    }

    public int getCourseID() {
        return courseID;
    }

    public void setCourseID(int courseID) {
        this.courseID = courseID;
    }

    public int getFeedbackDetailsID() {
        return feedbackDetailsID;
    }

    public void setFeedbackDetailsID(int feedbackDetailsID) {
        this.feedbackDetailsID = feedbackDetailsID;
    }

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }
    
}
