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
public class Lesson implements Serializable{
    private int lessonID;
    private int lessonTypeID;
    private int lessonLearningID;
    private int timeLesson;
    private int listLesson;

    public Lesson() {
    }

    public Lesson(int lessonID, int lessonTypeID, int lessonLearningID, int timeLesson, int listLesson) {
        this.lessonID = lessonID;
        this.lessonTypeID = lessonTypeID;
        this.lessonLearningID = lessonLearningID;
        this.timeLesson = timeLesson;
        this.listLesson = listLesson;
    }

    public int getLessonID() {
        return lessonID;
    }

    public void setLessonID(int lessonID) {
        this.lessonID = lessonID;
    }

    public int getLessonTypeID() {
        return lessonTypeID;
    }

    public void setLessonTypeID(int lessonTypeID) {
        this.lessonTypeID = lessonTypeID;
    }

    public int getLessonLearningID() {
        return lessonLearningID;
    }

    public void setLessonLearningID(int lessonLearningID) {
        this.lessonLearningID = lessonLearningID;
    }

    public int getTimeLesson() {
        return timeLesson;
    }

    public void setTimeLesson(int timeLesson) {
        this.timeLesson = timeLesson;
    }

    public int getListLesson() {
        return listLesson;
    }

    public void setListLesson(int listLesson) {
        this.listLesson = listLesson;
    }
    
    
}
