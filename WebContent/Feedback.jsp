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

.container1 {
    border-radius: 5px;
    width:800px;
    padding: 20px;
    margin:auto;
}
</style>
</head>
<body>
<jsp:include page="studentnav.jsp" />
<br><br><br><br>
<center><h3>Feedback Form</h3></center>

<div class="container1">
  <form action="FeedbackController">
    <label for="fname">Name *</label>
    <input type="text" id="fname" name="name" placeholder="Your name.." required>

    <label for="lname">Email Id *</label>
    <input type="text" id="lname" name="email_id" placeholder="Your Email Id.." required>

 	 <label for="lname">Contact No</label>
     <input type="tel" id="lname" name="contact_no" placeholder="123-456-7890">

    <label for="subject">Comment *</label>
    <textarea id="subject" name="subject" placeholder="Write something.." style="height:200px" required></textarea>
<br><br>
    <input type="submit" value="Submit">
  </form>
</div>

</body>
</html>
