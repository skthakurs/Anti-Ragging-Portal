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
 * Servlet implementation class UserController
 */
@WebServlet("/UserController")
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UserController() {
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

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 
		processRequest(request, response);
	}

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		String username = (String) session.getAttribute("username");

		if (session != null && username != null) {
			Userdao dao = new UserDaoImpl();
			RequestDispatcher rd = null;
		

			Student student = dao.userProfile(username);
			if (student != null) {
				rd = request.getRequestDispatcher("UserProfile.jsp");
				request.setAttribute("username", student.getUsername());
				request.setAttribute("fname", student.getFname());
				request.setAttribute("lname", student.getLname());
				request.setAttribute("email_id", student.getEmail_id());
				request.setAttribute("mobile_no", student.getMobile_no());
				request.setAttribute("gender", student.getGender());
				request.setAttribute("fathers_name", student.getFathers_name());
				request.setAttribute("fathers_contact", student.getFathers_contact());
				request.setAttribute("address", student.getAddress());
				request.setAttribute("city", student.getCity());
				request.setAttribute("state", student.getState());
				request.setAttribute("nationality", student.getNationality());
				request.setAttribute("course", student.getCourse());
				request.setAttribute("branch", student.getBranch());
				request.setAttribute("semester", student.getSemester());
				request.setAttribute("roll_no", student.getRoll_no());
				request.setAttribute("msg", "Welcome To your Profile");
				request.setAttribute("msgclass", "alert-success");
				rd.forward(request, response);

			} else {
				rd = request.getRequestDispatcher("login.jsp");
				request.setAttribute("msg", "Login Again");
				request.setAttribute("msgclass", "alert-danger");
				rd.forward(request, response);
			}

		} else {
			response.sendRedirect("logout.jsp");
		}
	}
}
