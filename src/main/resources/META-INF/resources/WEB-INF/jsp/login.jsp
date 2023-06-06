<html>
	<head>
		<title> Login Page</title>
		<link href="webjars/bootstrap/5.2.3/css/bootstrap.min.css" rel ="stylesheet">
		
	</head>
	<body>
		<div class="container">
			<h1>Login</h1>
			
			<pre>${loginError}</pre>
			<form method="post">
				Name: <input type="text" name="name"> <br>
				Password: <input type="password" name="password"> <br>
				<input type="submit" class="btn btn-success">
			</form>
		</div>
		<script src="webjars/bootstrap/5.2.3/js/bootstrap.min.js"></script>
		<script src="webjars/jquery/3.6.4/jquery.min.js"></script>
	</body>
</html>