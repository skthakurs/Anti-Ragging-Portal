package com.login.model;



public class Complaint {
	private String username;
	private String date_of_issue;
	private String place_of_issue;
	private String issue_case;
	private String details;

	private String complain_no;
	private String date_of_update;
	private String update_by;
	private String comment;
	private String action;
	private String current_status;
	private String firstname;
	public String name;
	public Complaint() {
		super();
		// TODO Auto-generated constructor stub
	}
	

	public Complaint(String username,String issue_case, String date_of_issue, String place_of_issue, String details ) {
		super();
		this.username = username;
		this.issue_case = issue_case;
		this.date_of_issue = date_of_issue;
		this.place_of_issue = place_of_issue;
		this.details = details;
		
	
	}





	public Complaint(String username2) {
		// TODO Auto-generated constructor stub
	}





	public String getIssue_case() {
		return issue_case;
	}
	public void setIssue_case(String issue_case) {
		this.issue_case = issue_case;
	}
	public String getDate_of_issue() {
		return date_of_issue;
	}
	public void setDate_of_issue(String date_of_issue) {
		this.date_of_issue = date_of_issue;
	}
	public String getPlace_of_issue() {
		return place_of_issue;
	}
	public void setPlace_of_issue(String place_of_issue) {
		this.place_of_issue = place_of_issue;
	}
	public String getDetails() {
		return details;
	}
	public void setDetails(String details) {
		this.details = details;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getcomplain_no() {
		return complain_no;
	}
	public void setcomplain_no(String complain_no) {
		this.complain_no = complain_no;
	}
	public String getDate_of_update() {
		return date_of_update;
	}
	public void setDate_of_update(String date_of_update) {
		this.date_of_update = date_of_update;
	}
	public String getUpdate_by() {
		return update_by;
	}
	public void setUpdate_by(String update_by) {
		this.update_by = update_by;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public String getAction() {
		return action;
	}
	public void setAction(String action) {
		this.action = action;
	}
	public String getCurrent_status() {
		return current_status;
	}
	public void setCurrent_status(String current_status) {
		this.current_status = current_status;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}



	
	
	}
