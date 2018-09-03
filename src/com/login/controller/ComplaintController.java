
package com.login.controller;

import java.io.IOException;
import java.time.LocalDate;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.login.dao.Userdao;
import com.login.dao.impl.UserDaoImpl;
import com.login.model.Complaint;

@WebServlet("/ComplaintController")
public class ComplaintController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ComplaintController() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		processRequest(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		processRequest(request, response);
	}

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		if (session != null) {
			String username = (String) session.getAttribute("username");

			String issue_case = request.getParameter("issue_case");
			String date_of_issue = request.getParameter("date_of_issue");
			String place_of_issue = request.getParameter("place_of_issue");
			String details = request.getParameter("details");
			Userdao dao = new UserDaoImpl();
			Complaint complaint = new Complaint(username, issue_case, date_of_issue, place_of_issue, details);
			String res = dao.complaintRegister(complaint);

			if (res.equals("SUCCESS")) {
				RequestDispatcher rd = null;
				rd = request.getRequestDispatcher("UserController");
				request.setAttribute("msg", "your complaint register ");
				rd.forward(request, response);
			} else {
				RequestDispatcher rd = null;
				rd = request.getRequestDispatcher("ComplaintRegister.jsp");
				request.setAttribute("msg", "your complaint failed ");
				rd.forward(request, response);
			}
		} else {
			RequestDispatcher rd = null;
			rd = request.getRequestDispatcher("ComplaintRegister.jsp");
			request.setAttribute("msg", "your complaint failed ");
			rd.forward(request, response);
		}
	}

}
