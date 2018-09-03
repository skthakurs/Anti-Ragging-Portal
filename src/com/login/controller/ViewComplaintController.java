package com.login.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.login.dao.Userdao;
import com.login.dao.impl.UserDaoImpl;
import com.login.model.Complaint;

/**
 * Servlet implementation class ViewComplaintController
 */
@WebServlet("/ViewComplaintController")
public class ViewComplaintController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewComplaintController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		processRequest(request, response);	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		processRequest(request, response);
	}
	protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Userdao dao = new UserDaoImpl();
		RequestDispatcher rd = null;
		String status=request.getParameter("status");
		List<Complaint> complaint=dao.displayComplaint(status);
		
		if(complaint!=null) {
			rd=request.getRequestDispatcher("ViewComplaints.jsp");
			request.setAttribute("comp", complaint);
			System.out.println(complaint);
			rd.forward(request, response);
		}else {
			rd=request.getRequestDispatcher("Compalints.jsp");
			request.setAttribute("fail-msg", "You are fail to get list");
		}
		
		
	}

}
