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
import com.login.model.User;


@WebServlet("/PasswordController")
public class PasswordController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public PasswordController() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		processRequest(request, response);	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		processRequest(request, response);
	}
	protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username="ADMIN";
		String password=request.getParameter("password");
		String confirmpassword=request.getParameter("confirmpassword");
		
		User user=new User(username,password,confirmpassword);
		Userdao dao = new UserDaoImpl();
		String res=dao.changePassword(user);
		
		if(res.equals("SUCCESS")) {
			RequestDispatcher rd=null;
			rd=request.getRequestDispatcher("UserProfile.jsp");
			request.setAttribute("password_msg", "Your Password has been Changed");
			rd.forward(request, response);
		}else {
			RequestDispatcher rd=null;
			rd=request.getRequestDispatcher("ChangePassword.jsp");
			request.setAttribute("password_msg", "Failed to Change Password");
			rd.forward(request, response);
		}
		
		
		
		
	}


}
