<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Status</title>
<style>
#content {
	margin-left: 450px;
	margin-top: 250px;
	margin-bottom: 200px;
}
</style>
</head>
<body>
	<jsp:include page="studentnav.jsp" />
	<form action="ComplaintStatusController" method="post">
		<div id="content">
			<div class="form-group" class="row">
				<div class="col-sm-4">
					<label>Complain ID</label> <input type="text" class="form-control" name="complain_no"
						placeholder="complain id goes here..." /><br />
					<div class="col-sm-4">
						<input type="submit" value="Check"
							class=" btn btn-primary btn-block">
					</div>
				</div>
			</div>
		</div>
	</form>
</body>
</html>