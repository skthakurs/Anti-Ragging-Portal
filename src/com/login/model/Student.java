package com.login.model;

public class Student {
	
	private String username;
	private String fname;
	private String lname;
	private String email_id;
	private String mobile_no;
	private String gender;
	private String fathers_name;
	private String fathers_contact;
	private String address;
	private String city;
	private String state;
	private String nationality;
	private String course;
	private String branch;
	private String semester;
	private String roll_no;
	
	
	
	public Student(String username) {
		super();
		this.username = username;
	}


	public Student(String username, String fname,String lname, String email_id, String mobile_no, String gender, String fathers_name,
			String fathers_contact, String address, String city, String state, String nationality, String course,
			String branch, String semester, String roll_no) {
		super();
		this.username = username;
		this.fname = fname;
		this.lname = lname;
		this.email_id = email_id;
		this.mobile_no = mobile_no;
		this.gender = gender;
		this.fathers_name = fathers_name;
		this.fathers_contact = fathers_contact;
		this.address = address;
		this.city = city;
		this.state = state;
		this.nationality = nationality;
		this.course = course;
		this.branch = branch;
		this.semester = semester;
		this.roll_no = roll_no;
	}

	
	public Student(Student student) {
		super();
		// 
	}


	public Student() {
		//super();
		// 
	}


	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	

	public String getFname() {
		return fname;
	}


	public void setFname(String fname) {
		this.fname = fname;
	}


	public String getLname() {
		return lname;
	}


	public void setLname(String lname) {
		this.lname = lname;
	}


	public String getEmail_id() {
		return email_id;
	}

	public void setEmail_id(String email_id) {
		this.email_id = email_id;
	}

	public String getMobile_no() {
		return mobile_no;
	}

	public void setMobile_no(String mobile_no) {
		this.mobile_no = mobile_no;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getFathers_name() {
		return fathers_name;
	}

	public void setFathers_name(String fathers_name) {
		this.fathers_name = fathers_name;
	}

	public String getFathers_contact() {
		return fathers_contact;
	}

	public void setFathers_contact(String fathers_contact) {
		this.fathers_contact = fathers_contact;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getNationality() {
		return nationality;
	}

	public void setNationality(String nationality) {
		this.nationality = nationality;
	}

	public String getCourse() {
		return course;
	}

	public void setCourse(String course) {
		this.course = course;
	}

	public String getBranch() {
		return branch;
	}

	public void setBranch(String branch) {
		this.branch = branch;
	}

	public String getSemester() {
		return semester;
	}

	public void setSemester(String semester) {
		this.semester = semester;
	}

	public String getRoll_no() {
		return roll_no;
	}

	public void setRoll_no(String roll_no) {
		this.roll_no = roll_no;
	}
	
	
	
	
}
