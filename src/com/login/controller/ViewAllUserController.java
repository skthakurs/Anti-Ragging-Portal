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

import com.login.model.User;

/**
 * Servlet implementation class ViewAllUserController
 */
@WebServlet("/ViewAllUserController")
public class ViewAllUserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewAllUserController() {
        super();
        // 
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 
		processRequest(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 
		processRequest(request, response);
	}
	protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String nextpage=request.getParameter("action");
		Userdao dao = new UserDaoImpl();
		RequestDispatcher rd = null;
	
		List<User> user=dao.displayAll() ;
		
		if(user!=null) {
			rd=request.getRequestDispatcher(nextpage);
			request.setAttribute("users", user);
			System.out.println(user);
			rd.forward(request, response);
		}else {
			rd=request.getRequestDispatcher("AdminDashboard.jsp");
			request.setAttribute("fail-msg", "You are fail to get list");
		}
		
		
	}

}
