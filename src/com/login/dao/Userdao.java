package com.login.dao;


import java.util.List;

import com.login.model.Complaint;

import com.login.model.Student;
import com.login.model.User;

public interface Userdao {
	public String isValid(User user) ;
	public List<User> displayAll() ;
	public void changeLoginStatus(int status, String username) ;
	public String registration(User user) ;
	public String studentRegister(Student student);
	public Student userProfile(String username);
	
	public String updateComplaintStatus(Complaint complaint);
	public String changePassword(User user);
	public Complaint checkComplaintStatus(String status);
	public List<Complaint> displayComplaint(String status);
	public Complaint complainNo(String username);
	public String complaintRegister(Complaint complaint);
	public String userType(User user);
	public String deleteUser(String username);
	public String profileUpdate(Student student);
	
	
	
	
}
