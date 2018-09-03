package com.login.model;

public class User {
	private String username;
	private String password;
	private int loginStatus;
	private String userType;
	private String emailid;
	private String name;
	private String mobileno;
	private String confirmpassword;
	
	
	
	public User(String username, String password, String confirmpassword) {
		super();
		this.username = username;
		this.password = password;
		this.confirmpassword = confirmpassword;
	}
	public User(String username, String password, int loginStatus, String userType) {
		super();
		this.username = username;
		this.password = password;
		this.loginStatus = loginStatus;
		this.userType = userType;
	}
	public User(String username, String password) {
		super();
		this.username = username;
		this.password = password;
	}
	public User(String username,String name, String emailid,String mobileno,String password,String userType) {
		super();
		this.username = username;
		this.password = password;
		//this.loginStatus = loginStatus;
		this.userType = userType;
		this.emailid = emailid;
		this.name = name;
		this.mobileno = mobileno;
	}
	public User() {
		// TODO Auto-generated constructor stub
	}
	public User(User user) {
		// TODO Auto-generated constructor stub
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getLoginStatus() {
		return loginStatus;
	}
	public void setLoginStatus(int loginStatus) {
		this.loginStatus = loginStatus;
	}
	public String getUserType() {
		return userType;
	}
	public void setUserType(String userType) {
		this.userType = userType;
	}
	public String getEmailid() {
		return emailid;
	}
	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMobileno() {
		return mobileno;
	}
	public void setMobileno(String mobileno) {
		this.mobileno = mobileno;
	}
	public String getConfirmpassword() {
		return confirmpassword;
	}
	public void setConfirmpassword(String confirmpassword) {
		this.confirmpassword = confirmpassword;
	}
	
}
