/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dto;

import java.io.Serializable;
import java.util.ArrayList;

/**
 *
 * @author duong
 */
public class LessonType implements Serializable{
    private int lessonTypeID;
    private String lessonTypeContent;
    private int lessonID;

    private ArrayList<LessonDetails> listLessDetails;
    public LessonType() {
    }

    public LessonType(int lessonTypeID, String lessonTypeContent, int lessonID, ArrayList<LessonDetails> listLessDetails) {
        this.lessonTypeID = lessonTypeID;
        this.lessonTypeContent = lessonTypeContent;
        this.lessonID = lessonID;
        this.listLessDetails = listLessDetails;
    }

    public int getLessonTypeID() {
        return lessonTypeID;
    }

    public void setLessonTypeID(int lessonTypeID) {
        this.lessonTypeID = lessonTypeID;
    }

    public String getLessonTypeContent() {
        return lessonTypeContent;
    }

    public void setLessonTypeContent(String lessonTypeContent) {
        this.lessonTypeContent = lessonTypeContent;
    }

    public int getLessonID() {
        return lessonID;
    }

    public void setLessonID(int lessonID) {
        this.lessonID = lessonID;
    }

    public ArrayList<LessonDetails> getListLessDetails() {
        return listLessDetails;
    }

    public void setListLessDetails(ArrayList<LessonDetails> listLessDetails) {
        this.listLessDetails = listLessDetails;
    }

    @Override
    public String toString() {
        return "LessonType{" + "lessonTypeID=" + lessonTypeID + ", lessonTypeContent=" + lessonTypeContent + ", lessonID=" + lessonID + ", listLessDetails=" + listLessDetails + '}';
    }
    
}
