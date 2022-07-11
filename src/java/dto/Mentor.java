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
public class Mentor implements Serializable{
    private int mentorID;
    private String mentorName;
    private String mentorContent;
    private String description;
    private String image;
    private int rating;
    private String working;
    private String trailer;
    private String achievements;
    

    public Mentor() {
    }

    public Mentor(int mentorID, String mentorName, String mentorContent, String description, String image, int rating, String working, String trailer, String achievements) {
        this.mentorID = mentorID;
        this.mentorName = mentorName;
        this.mentorContent = mentorContent;
        this.description = description;
        this.image = image;
        this.rating = rating;
        this.working = working;
        this.trailer = trailer;
        this.achievements = achievements;
    }

    public int getMentorID() {
        return mentorID;
    }

    public void setMentorID(int mentorID) {
        this.mentorID = mentorID;
    }

    public String getMentorName() {
        return mentorName;
    }

    public void setMentorName(String mentorName) {
        this.mentorName = mentorName;
    }

    public String getMentorContent() {
        return mentorContent;
    }

    public void setMentorContent(String mentorContent) {
        this.mentorContent = mentorContent;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public int getRating() {
        return rating;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }

    public String getWorking() {
        return working;
    }

    public void setWorking(String working) {
        this.working = working;
    }

    public String getTrailer() {
        return trailer;
    }

    public void setTrailer(String trailer) {
        this.trailer = trailer;
    }

    public String getAchievements() {
        return achievements;
    }

    public void setAchievements(String achievements) {
        this.achievements = achievements;
    }
    
}
