/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.CourseDAO;
import dao.FeedbackDetailsDAO;
import dao.LessonLearnDAO;
import dao.LessonTypeDAO;
import dao.MentorDAO;
import dto.Course;
import dto.FeedbackDetails;
import dto.LessonLearning;
import dto.LessonType;
import dto.Mentor;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author duong
 */
public class CardController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url = "card.jsp";
        try {
            int courseID = Integer.parseInt(request.getParameter("CourseID"));
            int mentorID = Integer.parseInt(request.getParameter("MentorID"));
            
            CourseDAO courseDAO = new CourseDAO();
            // get value to database to button payment course
            Course valueCourse = courseDAO.findCourseByID(courseID);
            request.setAttribute("COURSE_VALUE",valueCourse);
            
            //get info mentor
            MentorDAO mentorDAO = new MentorDAO();
            Mentor infoMentor = mentorDAO.getMentorByID(mentorID);
            request.setAttribute("INFO_MENTOR",infoMentor);
            
            //get list lesson your learn here
            int lessonID = courseDAO.getLessonIDByCourseID(courseID);
            LessonLearnDAO lessDAO = new LessonLearnDAO();
            ArrayList<LessonLearning> lesson = lessDAO.getListLessonOfType(lessonID);
            request.setAttribute("LIST_LESSON", lesson);
            
            //get list lesson details
            LessonTypeDAO lessTypeDAO = new LessonTypeDAO();
            ArrayList<LessonType> listLessType = lessTypeDAO.getListLessDetails(lessonID);
            request.setAttribute("LIST_LESSON_DETAILS", listLessType);
            
            // count user feedback
            int countFeedBack = courseDAO.countFeedbackCourse(courseID);
            request.setAttribute("COUNT_FEEDBACK", countFeedBack);
            
            // count to join this lesson
            int countLesson = courseDAO.countLessonCourse(mentorID);
            request.setAttribute("COUNT_LESSON", countLesson);
            
            // count student join to lesson
            int countStudent = courseDAO.countStudentCourse(mentorID);
            request.setAttribute("COUNT_STUDENT", countStudent);
            
            // list feedback of student
            FeedbackDetailsDAO feedDAO = new FeedbackDetailsDAO();
            ArrayList<FeedbackDetails> listFeedback = feedDAO.getListFeedbackByCourseID(courseID);
            request.setAttribute("LIST_FEEDBACK", listFeedback);
            
        } catch (Exception e) {
            log("Error At Card Controller " + e.getLocalizedMessage());
            request.setAttribute("Error ", e.getLocalizedMessage());
        } finally {
            request.getRequestDispatcher(url).forward(request, response);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
