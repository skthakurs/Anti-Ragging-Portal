package com.login.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.login.dao.Userdao;
import com.login.dao.impl.UserDaoImpl;
import com.login.model.Complaint;


@WebServlet("/ComplaintStatusController")
public class ComplaintStatusController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ComplaintStatusController() {
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

	protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String complain_no=request.getParameter("complain_no");
	//Status status=new Status(complain_no);
	
	Userdao dao=new UserDaoImpl();
	Complaint complaint=dao.checkComplaintStatus(complain_no);
	if(complaint!=null) {
		RequestDispatcher rd=null;
		rd=request.getRequestDispatcher("ComplaintStatus.jsp");
		request.setAttribute("complain_no", complain_no);
		request.setAttribute("date_of_update",complaint.getDate_of_update());
		request.setAttribute("update_by", complaint.getUpdate_by());
		request.setAttribute("comment", complaint.getComment());
		request.setAttribute("action", complaint.getAction());
		request.setAttribute("current_status", complaint.getCurrent_status());
		rd.forward(request, response);
	}else {
		RequestDispatcher rd=null;
		rd=request.getRequestDispatcher("UserProfile.jsp");
		request.setAttribute("fail-msg", "Something is wrong no get Status.");
		rd.forward(request, response);
	}
	
	
	
	
	
	
	}
}
