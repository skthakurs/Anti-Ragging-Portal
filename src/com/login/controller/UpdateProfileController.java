package com.login.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.login.dao.Userdao;
import com.login.dao.impl.UserDaoImpl;
import com.login.model.Student;

/**
 * Servlet implementation class UpdateProfileController
 */
@WebServlet("/UpdateProfileController")
public class UpdateProfileController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UpdateProfileController() {
		super();
		// 
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 
		processRequest(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 
		processRequest(request, response);
	}

	
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 

		HttpSession session = request.getSession(false);
		if (session != null) {

			String username = (String) session.getAttribute("username");
			String fname = request.getParameter("fname");
			String lname = request.getParameter("lname");
			String email_id = request.getParameter("email_id");
			String mobile_no = request.getParameter("mobile_no");
			String gender = request.getParameter("gender");
			String fathers_name = request.getParameter("fathers_name");
			String fathers_contact = request.getParameter("fathers_contact");
			String address = request.getParameter("address");
			String city = request.getParameter("city");
			String state = request.getParameter("state");
			String nationality = request.getParameter("nationality");
			String course = request.getParameter("course");
			String branch = request.getParameter("branch");
			String semester = request.getParameter("semester");
			String roll_no = request.getParameter("roll_no");

			Student student = new Student(username, fname , lname, email_id, mobile_no, gender, fathers_name, fathers_contact,
					address, city, state, nationality, course, branch, semester, roll_no);

			Userdao dao = new UserDaoImpl();
			String res = dao.profileUpdate(student);

			if (res.equals("SUCCESS")) {
				RequestDispatcher rd = null;
				Student student1 = dao.userProfile(username);

				if (student1 != null) {
					rd = request.getRequestDispatcher("UserProfile.jsp");
					request.setAttribute("msg", "Succesfully Update Your Data ");
					request.setAttribute("msgclass", "alert-success");
					request.setAttribute("username", student1.getUsername());
					request.setAttribute("fname", student1.getFname());
					request.setAttribute("lname", student1.getLname());
					request.setAttribute("email_id", student1.getEmail_id());
					request.setAttribute("mobile_no", student1.getMobile_no());
					request.setAttribute("gender", student1.getGender());
					request.setAttribute("fathers_name", student1.getFathers_name());
					request.setAttribute("fathers_contact", student1.getFathers_contact());
					request.setAttribute("address", student1.getAddress());
					request.setAttribute("city", student1.getCity());
					request.setAttribute("state", student1.getState());
					request.setAttribute("nationality", student1.getNationality());
					request.setAttribute("course", student1.getCourse());
					request.setAttribute("branch", student1.getBranch());
					request.setAttribute("semester", student1.getSemester());
					request.setAttribute("roll_no", student1.getRoll_no());

				} else {
					rd = request.getRequestDispatcher("UserProfile.jsp");
					request.setAttribute("msg", "Data Reterive Failed");
					request.setAttribute("msgclass", "alert-warning");
				}
				request.setAttribute("msg", "You are Succesfully Update.");
				request.setAttribute("msgclass", "alert-success");
				rd.forward(request, response);

			} else {
				RequestDispatcher rd = null;
				rd = request.getRequestDispatcher("UserProfile.jsp");
				request.setAttribute("msg", "Your Update Failed");
				request.setAttribute("msgclass", "alert-danger");
				rd.forward(request, response);
			}

		} else {
			RequestDispatcher rd = null;
			rd = request.getRequestDispatcher("login.jsp");
			request.setAttribute("msg", "Session Expired");
			rd.forward(request, response);

		}

	}

}
