<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Student Registration</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- <link rel="stylesheet" type="text/css" media="screen" href="main.css" /> -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">



</head>

<body>

	<div class="container-fluid">
		<div
			class="alert ${msgclass } text-center alert-dismissible fade show"
			role="alert">
			<strong>${msg }</strong>
			<button type="button" class="close" data-dismiss="alert"
				aria-label="Close">
				<span aria-hidden="true">&times;</span>
			</button>
		</div>
		<div class="row">
			<div class="col-sm-1"></div>
			<div class="col-sm-2">
				<img class="img-thumbnail avatar rounded-circle"
					src="icons/image.jpg"> <input type="file" class="" id="photo">

			</div>
			<div class="col-sm-8">
				<div>
					
					<h2>${username }</h2>
				</div>
				<hr>
				<form action="StudentController" method="post">
					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="fname">First Name</label> <input type="text"
								class="form-control" id="fname" name="fname" value="${fname }"
								placeholder="First Name" >
						</div>
						<div class="form-group col-md-6">
							<label for="lname">Last Name</label> <input type="text"
								class="form-control" id="lname" name="lname" value="${lname }"
								placeholder="Last Name" >
						</div>
						<div class="form-group col-md-6">
							<label for="inputEmail4">Email</label> <input type="email"
								class="form-control" name="email_id" id="inputEmail4"
								value="${email_id }" placeholder="Email" >
						</div>
						<div class="form-group col-md-6">
							<label for="mobile_no">Mobile No.</label> <input type="number"
								class="form-control" name="mobile_no" id="mobile_no"
								value="${mobile_no }" placeholder="Mobile No." >
						</div>
						<div class="form-group col-md-6">
							<label for="gender">Gender</label> <input type="text"
								class="form-control" name="gender" id="gender"
								value="${gender }" placeholder="Gender" >
						</div>
						<div class="form-group col-md-6">
							<label for="roll_no">Roll No.</label> <input type="number"
								class="form-control" id="roll_no" name="roll_no"
								value="${roll_no}" placeholder="Roll No." >
						</div>
						<div class="form-group col-md-6">
							<label for="fathers_name">Father's Name</label> <input
								type="text" class="form-control" name="fathers_name"
								id="fathers_name" value="${fathers_name }"
								placeholder="Father's Name" >
						</div>
						<div class="form-group col-md-6">
							<label for="fathers_contact">Father's Contact</label> <input
								type="number" class="form-control" name="fathers_contact"
								id="fathers_contact" value="${fathers_contact }"
								placeholder="Father's Conatact No." >
						</div>
					</div>
					<div class="form-group">
						<label for="inputAddress">Address</label> <input type="text"
							class="form-control" id="inputAddress" name="address"
							value="${address }" placeholder="1234 Main St" >
					</div>
					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="inputCity">City</label> <input type="text"
								class="form-control" id="inputCity" name="city" value="${city }"
								>
						</div>
						<div class="form-group col-md-4">
							<label for="inputState">State</label> <input type="text"
								class="form-control" id="inputCity" name="state"
								value="${state }" >
						</div>
						<div class="form-group col-md-2">
							<label for="inputZip">Nationality</label> <input type="text"
								class="form-control" id="inputZip" name="nationality"
								value="${nationality}" >
						</div>
					</div>
					<div class="form-row">
						<div class="form-group col-md-5">
							<label for="course">Cousre</label> <input type="text"
								class="form-control" id="course" name="course"
								value="${course }" >
						</div>
						<div class="form-group col-md-5">
							<label for="branch">Branch</label> <input type="text"
								class="form-control" id="branch" name="branch"
								value="${branch }" >
						</div>
						<div class="form-group col-md-2">
							<label for="semester">Semester</label> <input type="text"
								class="form-control" id="semester" name="semester"
								value="${semester }" >
						</div>
					</div>
					<div class="row">
						<div class="col-sm-1">
							<button class="btn btn-primary"  type="submit" >Submit</button>
						</div>
						<div class="col-sm-1">
							<button type="reset" class="btn btn-danger" >Reset</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
		integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
		crossorigin="anonymous"></script>
</body>

</html>