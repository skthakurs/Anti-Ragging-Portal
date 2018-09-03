package com.login.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSession;

import com.login.dao.Userdao;
import com.login.dao.impl.UserDaoImpl;
import com.login.model.User;
import com.login.model.Student;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		processRequest(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		processRequest(request, response);
	}

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		User user = new User(username, password);

		HttpSession session = request.getSession();

		Userdao dao = new UserDaoImpl();
		String res = dao.isValid(user);
		if (res.equals("SUCCESS")) {
			System.out.println("Login Succes--");
			if (session != null) {
				session.setAttribute("username", user.getUsername());
				session.setMaxInactiveInterval(120);
				System.out.println(session.getId());
				String res1 = dao.userType(user);
				if (res1.equals("A")) {
					RequestDispatcher rd = null;
					rd = request.getRequestDispatcher("AdminDashboard.jsp");
					rd.forward(request, response);
				} else if (res1.equals("S")) {
					RequestDispatcher rd = null;
					rd = request.getRequestDispatcher("StudentDashboard.jsp");
					rd.forward(request, response);
				} else {
					response.sendRedirect("logout.jsp");
				}
			} else {
				response.sendRedirect("logout.jsp");
			}

		} else {
			RequestDispatcher rd = null;
			rd = request.getRequestDispatcher("login.jsp");
			request.setAttribute("incorrectPassword",
					"Your userid or password is incorrect. Kindly enter correct credentials.");
			rd.forward(request, response);
		}
	}

}
