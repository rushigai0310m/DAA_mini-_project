<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
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
					<form action="userRegister" method="post">
                        <div class="mb-2">
							<label  class="form-label">Name</label>
							<input type="text" class="form-control" name="name" placeholder="Enter Your Name" >
						</div>
						<div class="mb-2">
							<label for="exampleInputEmail1" class="form-label">Email address</label>
							<input type="email" class="form-control" name="mail" placeholder="Enter Your Email" >
						</div>
						<div class="mb-6">
							<label  class="form-label">Password</label>
							<input type="password" class="form-control" name="password" placeholder="Enter Your Password">
						</div>
                        
						<div class="mb-6">
							<label class="form-label">Retry-Password</label>
							<input type="password" class="form-control" placeholder="Re-Enter Password">
						</div>
                        <div class="mb-2">
							<label  class="form-label">Mobile</label>
							<input type="text" class="form-control" name="mobile" placeholder="Enter Your Mobile Number" >
						</div>
                        <div class="mb-2">
							<label  class="form-label">Address</label>
							<!-- <input type="text" class="form-control" name="address" placeholder="Enter Your Address" > -->
							<textarea name="address" class="form-control" placeholder="Enter Your Address"></textarea>
						</div>
						<div class="mb-6 mt-3">
							<button type="submit" class="btn btn-primary">Register</button>
						</div>
						<div class="mb-6 mt-3">
							<p class="mb-5 pb-lg-2" style="color: #393f81;">Already have an account? <a href="login.jsp"style="color: #393f81;">Login</a></p>
						</div>
					</form>
				</div>
				
			</div>
			<div class="col-lg-4">
				
			</div>
		</div>
	</div>
</body>
</html>