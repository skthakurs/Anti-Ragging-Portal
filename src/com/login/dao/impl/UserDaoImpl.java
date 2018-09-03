package com.login.dao.impl;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.login.dao.Userdao;
import com.login.db.util.DBUtil;
import com.login.model.Complaint;

import com.login.model.Student;
import com.login.model.User;

public class UserDaoImpl implements Userdao {

	private Connection conn = DBUtil.getConnection();

	@Override
	public String isValid(User user) {
		String result = "FAIL";
		String sql = "SELECT USERNAME,PASSWORD FROM USER WHERE USERNAME = ? AND PASSWORD = ?";
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, user.getUsername());
			ps.setString(2, user.getPassword());
			rs = ps.executeQuery();
			if (rs.next()) {
				result = "SUCCESS";
				changeLoginStatus(1, user.getUsername());
				System.out.println("Login Successful");
			} else {
				System.out.println("Login Failed");
			}

		} catch (SQLException e) {

			System.out.println("Error in isValid - " + e);
		}

		return result;
	}

	@Override
	public List<User> displayAll() {
		List<User> list = new ArrayList<User>();
		String sql = "SELECT * FROM USER";
		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			ps = conn.prepareStatement(sql);
			// Execute
			rs = ps.executeQuery();
			while (rs.next()) {
				User user = new User();
				user.setUsername(rs.getString(1));
				user.setName(rs.getString(5));
				user.setPassword(rs.getString(2));
				user.setLoginStatus(rs.getInt(3));
				user.setUserType(rs.getString(4));
				user.setEmailid(rs.getString(6));
				user.setMobileno(rs.getString(7));
				list.add(user);
			}
		} catch (SQLException e) {
			System.out.println("Error in dispalayAll - " + e);
			list = null;
		}

		return list;
	}

	@Override
	public void changeLoginStatus(int status, String username) {
		String sql = "UPDATE USER SET LOGIN_STATUS =?  WHERE USERNAME =?";
		PreparedStatement ps = null;
		// ResultSet rs = null;
		try {
			ps = conn.prepareStatement(sql);
			ps.setInt(1, status);
			ps.setString(2, username);
			ps.executeUpdate();
		} catch (SQLException e) {

			System.out.println("Error in changeLoginStatus. - " + e);
		}

	}

	@Override
	public String changePassword(User user) {

		String result = "Fail";
		String password = null;
		String sql = "SELECT PASSWORD FROM USER WHERE USERNAME=?";
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, user.getUsername());
			rs = ps.executeQuery();
			if (rs.next()) {
				password = rs.getString("PASSWORD");
			}
			if (password.equals(user.getPassword())) {

				String sql1 = "UPDATE USER SET PASSWORD =?  WHERE USERNAME =?";
				try {
					ps = conn.prepareStatement(sql1);
					ps.setString(1, user.getConfirmpassword());
					ps.setString(2, user.getUsername());
					ps.executeUpdate();
					result = "SUCCESS";
					System.out.println("Successful Update Password");
				} catch (SQLException e) {

					System.out.println("Error in changingpassword. - " + e);
					result = "FAIL";
				}
			}

		} catch (SQLException e) {

			System.out.println("Error in changePassword. - " + e);
		}

		return result;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.login.dao.Userdao#registration(java.lang.String, java.lang.String,
	 * java.lang.String, java.lang.String, java.lang.String)
	 */
	@Override
	public String registration(User user) {

		String result = "FAIL";
		String sql = "INSERT INTO USER VALUES(?,?,0,?,?,?,?)";
		PreparedStatement ps = null;
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, user.getUsername());
			ps.setString(2, user.getPassword());
			ps.setString(3, user.getUserType());
			ps.setString(4, user.getName());
			ps.setString(5, user.getEmailid());
			ps.setString(6, user.getMobileno());

			ps.executeUpdate();
			System.out.println("Insert Success");
			result = "SUCCESS";
		} catch (SQLException e) {
			System.out.println("Insert Failure " + e);
		}
		return result;
	}

	@Override
	public String studentRegister(Student student) {

		String result = "FAIL";
		String sql = "INSERT INTO STUDENT (USERNAME,FIRST_NAME,LAST_NAME,EMAIL_ID,MOBILE_NO,GENDER,FATHERS_NAME,FATHERS_CONTACT,ADDRESS,CITY,STATE,NATIONALITY,COURSE,SEMESTER,BRANCH,ROLL_NO) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement ps = null;
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, student.getUsername());
			ps.setString(2, student.getFname());
			ps.setString(3, student.getLname());
			ps.setString(4, student.getEmail_id());
			ps.setString(5, student.getMobile_no());
			ps.setString(6, student.getGender());
			ps.setString(7, student.getFathers_name());
			ps.setString(8, student.getFathers_contact());
			ps.setString(9, student.getAddress());
			ps.setString(10, student.getCity());
			ps.setString(11, student.getState());
			ps.setString(12, student.getNationality());
			ps.setString(13, student.getCourse());
			ps.setString(14, student.getSemester());
			ps.setString(15, student.getBranch());
			ps.setString(16, student.getRoll_no());

			ps.executeUpdate();
			System.out.println("Insert Sucess");
			result = "SUCCESS";
		} catch (SQLException e) {
			System.out.println("Insert Failure" + e);

		}

		return result;
	}

	@Override
	public Student userProfile(String username) {
		List<Student> list = new ArrayList<Student>();
		String sql = "SELECT * FROM STUDENT WHERE USERNAME=?";
		PreparedStatement ps = null;
		ResultSet rs = null;

		Student student = new Student();

		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, username);
			rs = ps.executeQuery();
			if (rs.next()) {
				student.setUsername(rs.getString("USERNAME"));
				student.setFname(rs.getString("FIRST_NAME"));
				student.setLname(rs.getString("LAST_NAME"));
				student.setEmail_id(rs.getString("EMAIL_ID"));
				student.setMobile_no(rs.getString("MOBILE_NO"));
				student.setGender(rs.getString("GENDER"));
				student.setFathers_name(rs.getString("FATHERS_NAME"));
				student.setFathers_contact(rs.getString("FATHERS_CONTACT"));
				student.setAddress(rs.getString("ADDRESS"));
				student.setCity(rs.getString("CITY"));
				student.setState(rs.getString("STATE"));
				student.setNationality(rs.getString("NATIONALITY"));
				student.setCourse(rs.getString("COURSE"));
				student.setSemester(rs.getString("SEMESTER"));
				student.setBranch(rs.getString("BRANCH"));
				student.setRoll_no(rs.getString("ROLL_NO"));
				list.add(student);

			}
			System.out.println("Success Fully Retreive Data");

		} catch (SQLException e) {
			System.out.println("Fail to Retreive Data");

		}

		return student;
	}

	@Override
	public String updateComplaintStatus(Complaint complaint) {
		String result = null;
		PreparedStatement ps = null;
		String sql = "UPDATE STATUS SET UPDATE_BY=?,COMMENT=?,ACTION=?,CURRENT_STATUS=? WHERE COMPLAIN_NO=?";
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, complaint.getUpdate_by());
			ps.setString(2, complaint.getComment());
			ps.setString(3, complaint.getAction());
			ps.setString(4, complaint.getCurrent_status());
			ps.setString(5, complaint.getcomplain_no());

			ps.executeUpdate();
			result = "SUCCESS";
			System.out.println("Sucessful Update Complaint Status");
		} catch (SQLException e) {
			System.out.println("Fail to Update Complaint Status" + e);
			result = "FAIL";
		}

		return result;

	}

	@Override
	public Complaint checkComplaintStatus(String complain_no) {
		List<Complaint> list = new ArrayList<Complaint>();
		String sql = "SELECT * FROM STATUS WHERE COMPLAIN_NO=?";
		PreparedStatement ps = null;
		ResultSet rs = null;
		Complaint status = new Complaint();

		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, complain_no);
			rs = ps.executeQuery();

			if (rs.next()) {
				status.setDate_of_update(rs.getString("DATE_OF_UPDATE"));
				status.setUpdate_by(rs.getString("UPDATE_BY"));
				status.setComment(rs.getString("COMMENT"));
				status.setAction(rs.getString("ACTION"));
				status.setCurrent_status(rs.getString("CURRENT_STATUS"));
				list.add(status);
				System.out.println("Succesfully get status data");
			}
		} catch (SQLException e) {
			System.out.println("Fail to get status data");

		}

		return status;
	}

	@Override
	public List<Complaint> displayComplaint(String status) {
		List<Complaint> list = new ArrayList<Complaint>();
		String sql = "SELECT * FROM COMPLAINT C ON S.USERNAME=C.USERNAME INNER JOIN STATUS ST ON ST.COMPLAIN_NO=C.COMPLAIN_NO WHERE CURRENT_STATUS=?";
		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, status);
			rs = ps.executeQuery();
			while (rs.next()) {
				Complaint complaint = new Complaint();
				complaint.setcomplain_no(rs.getString("COMPLAIN_NO"));
				complaint.setDate_of_issue(rs.getString("DATE_OF_ISSUE"));
				complaint.setName(rs.getString("NAME"));
				complaint.setDate_of_update(rs.getString("DATE_OF_UPDATE"));
				complaint.setAction(rs.getString("ACTION"));
				complaint.setCurrent_status(rs.getString("CURRENT_STATUS"));
				complaint.setUpdate_by(rs.getString("UPDATE_BY"));
				complaint.setUsername(rs.getString("USERNAME"));
				list.add(complaint);
			}
			System.out.println("Succesfully get data in list");
			System.out.println(list);

		} catch (SQLException e) {
			System.out.println("Failed to get data " + e);
		}
		return list;
	}

	@Override
	public Complaint complainNo(String username) {
		String sql = "SELECT COMPLAIN_NO FROM COMPLAINT WHERE USERNAME=?";
		PreparedStatement ps = null;
		ResultSet rs = null;
		// String result = null;
		Complaint comp = new Complaint();
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, username);

			rs = ps.executeQuery();
			if (rs.next()) {
				comp.setcomplain_no(rs.getString("COMPLAIN_NO"));
				// result = "SUCCESS";
				System.out.println("get compalin no");
			}
		} catch (SQLException e) {
			// result = "FAIL";
			System.out.println("Error in changeLoginStatus. - " + e);
			System.out.println("not get comlain no");
		}
		return comp;

	}

	@Override
	public String complaintRegister(Complaint complaint) {
		String result = null;
		PreparedStatement ps = null;
		PreparedStatement ps1 = null;

		String sql = "INSERT INTO COMPLAINT (USERNAME,DATE_OF_ISSUE,PLACE_OF_ISSUE,ISSUE_CASE,DETAILS) VALUES (?,?,?,?,?)";
		String sql1 = "INSERT INTO STATUS (COMPLAIN_NO,CURRENT_STATUS) VALUES (?,?)";
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, complaint.getUsername());
			System.out.println(complaint.getUsername());
			ps.setString(2, complaint.getDate_of_issue());
			ps.setString(3, complaint.getPlace_of_issue());
			ps.setString(4, complaint.getIssue_case());
			ps.setString(5, complaint.getDetails());
			ps.executeUpdate();
			System.out.println("comlaint register success");

			Complaint res = complainNo(complaint.getUsername());
			if (res != null) {
				result = "SUCCESS";
				System.out.println("get complain no success");
				if (result == "SUCCESS") {
					ps1 = conn.prepareStatement(sql1);
					ps1.setString(1, res.getcomplain_no());
					ps1.setString(2, "pending");

					ps1.executeUpdate();
					System.out.println("succefully filled in status");

				}
			}

		} catch (SQLException e) {
			System.out.println("fail to register" + e);
			result = "FAIL";
		}
		return result;
	}

	@Override
	public String userType(User user) {
		String sql = "SELECT USER_TYPE FROM USER WHERE USERNAME = ? AND PASSWORD = ?";
		PreparedStatement ps = null;
		String result = null;
		ResultSet rs = null;

		try {

			ps = conn.prepareStatement(sql);
			ps.setString(1, user.getUsername());
			System.out.println(user.getUsername());
			ps.setString(2, user.getPassword());
			System.out.println(user.getPassword());
			rs = ps.executeQuery();

			if (rs.next()) {
				System.out.println("hello 1");
				result = rs.getString("USER_TYPE");
				System.out.println(rs.getString(1));
				System.out.println("get user type");
			}
		} catch (SQLException e) {
			// result = "FAIL";
			System.out.println("Error in userType - " + e);
			System.out.println("not get usertype");
		}
		return result;

	}

	@Override
	public String deleteUser(String username) {
		String result = null;
		PreparedStatement ps = null;
		String sql = "DELETE FROM USER WHERE USERNAME=?";
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, username);
			ps.executeUpdate();
			result = "SUCCESS";
			System.out.println("Delete user successfully");
		} catch (SQLException e) {
			System.out.println("fail user Deletion, due to" + e);

		}
		return result;
	}

	@Override
	public String profileUpdate(Student student) {
		String result = "FAIL";
		String sql = "UPDATE STUDENT set FIRST_NAME=?,EMAIL_ID=?,MOBILE_NO=?,GENDER=?,FATHERS_NAME=?,FATHERS_CONTACT=?,ADDRESS=?,CITY=?,STATE=?,NATIONALITY=?,COURSE=?,SEMESTER=?,BRANCH=?,ROLL_NO=?,LAST_NAME=? WHERE USERNAME=?";
		PreparedStatement ps = null;
		try {
			ps = conn.prepareStatement(sql);
			
			ps.setString(1, student.getFname());
			ps.setString(2, student.getEmail_id());
			ps.setString(3, student.getMobile_no());
			ps.setString(4, student.getGender());
			ps.setString(5, student.getFathers_name());
			ps.setString(6, student.getFathers_contact());
			ps.setString(7, student.getAddress());
			ps.setString(8, student.getCity());
			ps.setString(9, student.getState());
			ps.setString(10, student.getNationality());
			ps.setString(11, student.getCourse());
			ps.setString(12, student.getSemester());
			ps.setString(13, student.getBranch());
			ps.setString(14, student.getRoll_no());
			ps.setString(15, student.getLname());
			ps.setString(16, student.getUsername());
			ps.executeUpdate();
			System.out.println("Update Sucess");
			result = "SUCCESS";
		} catch (SQLException e) {
			System.out.println("Update Failure" + e);

		}

		return result;

	}
}
