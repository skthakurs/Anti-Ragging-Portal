$(document).ready(function()
{ 
	$("#cnfpassword").blur(function(){
		var pass = $('#password').val();
		var cnf =  $('#cnfpassword').val();
		if(pass != cnf){
			$("#message").html(".....password did not match.....");
		}
	});
});