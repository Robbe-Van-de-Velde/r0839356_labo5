package be.ucll.labo5_startoplossing.ui.controller;


import be.ucll.labo5_startoplossing.domain.db.StudentDB;
import be.ucll.labo5_startoplossing.domain.model.Student;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/StudentInfo")
public class StudentInformatie extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	StudentDB klas=new StudentDB();
       
    public StudentInformatie() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}
	private void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException,
			IOException {
		String destination;
		String command = request.getParameter("command");
		if (command == null) command = "HOME";

		switch (command){
			case "OVERVIEW":
				destination = getOverview(request);
				break;
			case "FIND":
				destination = findStudent(request);
				break;
			case "ADD":
				destination = addStudent(request);
				break;
			case "DELETECONFIRM":
				destination = removeStudentConfirmation(request);
				break;
			case "DELETE":
				destination = removeStudent(request);
				break;
			default:
				destination = goHome(request);
		}
		RequestDispatcher view= request.getRequestDispatcher(destination);
		view.forward(request, response);
	}

	private String removeStudent(HttpServletRequest request) {
		klas.removeStudent(request.getParameter("naam"), request.getParameter("voornaam"));
    	return "StudentInfo?command=OVERVIEW";
	}

	private String removeStudentConfirmation(HttpServletRequest request) {
    	String voornaam = request.getParameter("voornaam");
    	String naam = request.getParameter("naam");
    	request.setAttribute("studentnaam", naam);
    	request.setAttribute("studentvoornaam", voornaam);

		return "verwijderBevestiging.jsp";
	}

	private String addStudent(HttpServletRequest request) {
		String naam = request.getParameter("naam");
		String voornaam = request.getParameter("voornaam");
		String leeftijd = request.getParameter("leeftijd");
		String studierichting = request.getParameter("studierichting");

		String destination = "index.jsp";

		if (naam.isEmpty() || voornaam.isEmpty() || leeftijd.isEmpty() || studierichting.isEmpty()) {
			destination = "studentForm.jsp";
		}
		else {
			Student student = new Student(naam, voornaam, Integer.parseInt(leeftijd), studierichting);
			klas.voegToe(student);
			request.setAttribute("studenten", klas.getKlas());
			destination = "studentOverview.jsp";
		}
		return destination;
	}

	private String findStudent(HttpServletRequest request) {
		String destination;
		String naam = request.getParameter("naam");
		String voornaam = request.getParameter("voornaam");
		if (naam == null || voornaam == null) {
			destination = "nietGevonden.jsp";
		} else {
			Student student = klas.vind(naam, voornaam);
			if (student == null) {
				destination = "nietGevonden.jsp";
			} else {
				destination = "gevonden.jsp";
				request.setAttribute("student", student);
			}
		}
		return destination;
	}

	private String getOverview(HttpServletRequest request) {
		String destination;
		destination = "studentOverview.jsp";
		request.setAttribute("studenten", klas.getKlas());
		return destination;
	}

	private String goHome(HttpServletRequest request){
		String destination = "index.jsp";
		return destination;
	}

}
