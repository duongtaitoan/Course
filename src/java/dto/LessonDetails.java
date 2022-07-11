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
public class LessonDetails implements Serializable{
    private int lessonDetailsID;
    private String lessonContent;
    private int timeDetailsLesson;
    private int lessonTypeID;
    private boolean isActive;

    public LessonDetails() {
    }

    public LessonDetails(int lessonDetailsID, String lessonContent, int timeDetailsLesson, int lessonTypeID, boolean isActive) {
        this.lessonDetailsID = lessonDetailsID;
        this.lessonContent = lessonContent;
        this.timeDetailsLesson = timeDetailsLesson;
        this.lessonTypeID = lessonTypeID;
        this.isActive = isActive;
    }

    public int getLessonDetailsID() {
        return lessonDetailsID;
    }

    public void setLessonDetailsID(int lessonDetailsID) {
        this.lessonDetailsID = lessonDetailsID;
    }

    public String getLessonContent() {
        return lessonContent;
    }

    public void setLessonContent(String lessonContent) {
        this.lessonContent = lessonContent;
    }

    public int getTimeDetailsLesson() {
        return timeDetailsLesson;
    }

    public void setTimeDetailsLesson(int timeDetailsLesson) {
        this.timeDetailsLesson = timeDetailsLesson;
    }

    public int getLessonTypeID() {
        return lessonTypeID;
    }

    public void setLessonTypeID(int lessonTypeID) {
        this.lessonTypeID = lessonTypeID;
    }

    public boolean isIsActive() {
        return isActive;
    }

    public void setIsActive(boolean isActive) {
        this.isActive = isActive;
    }
    
    
   
}
