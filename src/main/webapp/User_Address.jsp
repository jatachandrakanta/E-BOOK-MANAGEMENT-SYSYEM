<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User:Address</title>
<%@include file="all_component/all_css.jsp"%>
</head>
<body style="background-color: #f0f1f2">
	<%@include file="all_component/Navbar.jsp"%>
	<div class="container">

		<div class="row p-3">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-body">
					<h3 class="text-center text-success">Add Address</h3>
						<form action="">
							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="inputEmail4">Adress</label> <input
										type="text" class="form-control" id="inputEmail4"
										>
								</div>
								<div class="form-group col-md-6">
									<label for="inputPassword4">Landmark</label> <input type="text"
										class="form-control" id="inputPassword4">
								</div>
							</div>
							<div class="form-row">
								
								<div class="form-group col-md-4">
									<label for="inputPassword4">City</label> <input type="text"
										class="form-control" id="inputPassword4">
								</div>
									<div class="form-group col-md-4">
									<label for="inputPassword4">State</label> <input type="text"
										class="form-control" id="inputPassword4">
								</div>
								
									<div class="form-group col-md-4">
									<label for="inputPassword4">Pin</label> <input type="number"
										class="form-control" id="inputPassword4">
								</div>
							</div>
							<div class="text-center">
							<button class="btn btn-warning text-white">Add Address</button>
							</div>
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>