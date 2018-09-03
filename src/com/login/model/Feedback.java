package com.login.model;

public class Feedback {
	private String email_id;
	private String name;
	private String mobile_no;
	private String comment;
	public Feedback() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Feedback(String email_id, String name, String mobile_no, String comment) {
		super();
		this.email_id = email_id;
		this.name = name;
		this.mobile_no = mobile_no;
		this.comment = comment;
	}
	public String getEmail_id() {
		return email_id;
	}
	public void setEmail_id(String email_id) {
		this.email_id = email_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMobile_no() {
		return mobile_no;
	}
	public void setMobile_no(String mobile_no) {
		this.mobile_no = mobile_no;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	
}
