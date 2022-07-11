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
public class LessonLearning implements Serializable{
    private int lessonLearningID;
    private String lessonType;
    private int lessonID;

    public LessonLearning() {
    }

    public LessonLearning(int lessonLearningID, String lessonType, int lessonID) {
        this.lessonLearningID = lessonLearningID;
        this.lessonType = lessonType;
        this.lessonID = lessonID;
    }

    public int getLessonLearningID() {
        return lessonLearningID;
    }

    public void setLessonLearningID(int lessonLearningID) {
        this.lessonLearningID = lessonLearningID;
    }

    public String getLessonType() {
        return lessonType;
    }

    public void setLessonType(String lessonType) {
        this.lessonType = lessonType;
    }

    public int getLessonID() {
        return lessonID;
    }

    public void setLessonID(int lessonID) {
        this.lessonID = lessonID;
    }
    
}
