<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link   rel="stylesheet" type="text/css" href="css/bootstrap.min.css" >  
<script type="text/javascript" src="js/bootstrap.min.js"></script>
	
</head>
<body class="bg-info-subtle">
	<div class="container bg-info-subtle">
		<div class="row mt-5">
			<div class="col-lg-4">
				
			</div>
			<div class="col-lg-4 d-flex align-items-center  bg-dark-subtle rounded">
				<div class="col-3"></div>
				<div class="col-6 mt-5">
					<form action="userLogin" method="post">
						<div class="mb-2">
							<label  class="form-label">Email</label>
							<input type="text" class="form-control" name="username" placeholder="Enter Your Email" >
						</div>
						<div class="mb-6">
							<label  class="form-label">Password</label>
							<input type="password" class="form-control" name="password" placeholder="Enter Your Password" >
						</div>
						<div class="mb-6 mt-3">
							<button type="submit" class="btn btn-primary rounded" name="send">Login</button>
						</div>
					</form>
					<div class="mb-6 mt-3">
						<p class="mb-5 pb-lg-2" style="color: #393f81;">Don't have an account? <a href="register.jsp"style="color: #393f81;">Register</a></p>
					</div>
				</div>
				
			</div>
			<div class="col-lg-4">
				
			</div>
		</div>
	</div>
	
</body>
</html>