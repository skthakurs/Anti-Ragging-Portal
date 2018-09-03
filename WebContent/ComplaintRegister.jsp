<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Feedback Form</title>
<style>
body {font-family: Arial, Helvetica, sans-serif;}

input[type=text],input[type=tel], select, textarea {
    width: 100%;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    margin-top: 6px;
    margin-bottom: 16px;
    resize: vertical;
}

input[type=submit] {
    background-color: #4CAF50;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type=submit]:hover {
    background-color: #45a049;
}

.container {
    border-radius: 5px;
    background-color:none;
    width:800px;
    padding: 20px;
    margin:auto;
}
h3{

    text-transform: uppercase;
    text-decoration: underline;
}


</style>
</head>
<body>
    <jsp:include page="studentnav.jsp" />
    <h3>${msg }</h3>
<center><h3>Complaint Registration</h3></center>

<div class="container">
    
	<center>
		
		
	</center>
	<form action="ComplaintController">
    <label for="fname">Case *</label>
    <input  type="text" name="issue_case" placeholder="Your name.." required>

    <label for="lname">Date of Issue*</label>
    <input type="text"  type="date" name="date_of_issue" placeholder="Date Of issue"required>

 	 <label for="lname">Place of Issue* :</label>
     <input  type="text" name="place_of_issue" placeholder="Place of Issue" required>

    <label for="subject">Details *</label>
    <textarea id="subject" name="details" placeholder="Write something.." style="height:200px" required></textarea><br><br>

    <input type="submit" value="Submit">
  </form>
</div>

</body>
</html>
