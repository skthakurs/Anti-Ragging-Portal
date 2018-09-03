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
 * Servlet implementation class DeleteUserController
 */
@WebServlet("/DeleteUserController")
public class DeleteUserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteUserController() {
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
		
		HttpSession session = request.getSession(false);
		if (session != null) {
			
			String username = request.getParameter("delete");
			Userdao dao = new UserDaoImpl();
			String res=dao.deleteUser(username);
			
			if(res.equals("SUCCESS")) {
				RequestDispatcher rd=null;
				rd=request.getRequestDispatcher("ViewAllUserController?action=RemoveUser.jsp");
				request.setAttribute("sucess-msg", "Successfully,Delete User");
				rd.forward(request, response);
				
			}else {
				RequestDispatcher rd=null;
				rd=request.getRequestDispatcher("ViewAllUserController?action=RemoveUser.jsp");
				request.setAttribute("sucess-msg", "Failed to delete User");
				rd.forward(request, response);
			}
			
		}else {
			RequestDispatcher rd=null;
			rd=request.getRequestDispatcher("login.jsp");
			request.setAttribute("msg", "Your Session is expired , Please login again.");
			rd.forward(request, response);
		}
		
		
	}

}
