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
import com.login.model.User;

/**
 * Servlet implementation class RegistrationController
 */
@WebServlet("/RegistrationController")
public class RegistrationController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RegistrationController() {
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
		String username = request.getParameter("username");
		String name = request.getParameter("name");
		String emailid = request.getParameter("emailid");
		String mobileno = request.getParameter("mobileno");
		String password = request.getParameter("password");
		String userType = request.getParameter("usertype");

			HttpSession session=request.getSession(false);
		Userdao dao = new UserDaoImpl();
		User user = new User(username, name, emailid, mobileno, password, userType);
		String res = dao.registration(user);

			if (res.equals("SUCCESS")) {
				if (session != null) {
					session.setAttribute("username", user.getUsername());
					session.setMaxInactiveInterval(120);

					RequestDispatcher rd = null;
					rd = request.getRequestDispatcher("StudentRegister.jsp");
					rd.forward(request, response);
				} 
			}
			else {
				RequestDispatcher rd = null;
				rd = request.getRequestDispatcher("signup.jsp");
				request.setAttribute("msg", "Something is Wrong");
				rd.forward(request, response);
			}
		}
	}
