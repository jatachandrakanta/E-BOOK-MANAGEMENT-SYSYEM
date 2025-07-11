<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EBook: login</title>
<%@include file="all_component/all_css.jsp"%>
</head>
<body style="background-color: #f0f1f2">
	<%@include file="all_component/Navbar.jsp"%>

	<div class="container">
		<div class="row mt-2">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h3 class="text-center">Login</h3>
						<c:if test="${not empty failedMsg}">
							<h5 class="text-center text-danger">${failedMsg}</h5>
							<c:remove var="failedMsg" scope="session" />
						</c:if>


						<c:if test="${not empty succMsg}">
							<h5 class="text-center text-success">${succMsg}</h5>
							<c:remove var="failedMsg" scope="session" />
						</c:if>

						<form action="Login" method="post" autocomplete="off">
							<div class="form-group">
								<label for="exampleInputEmail1">Email address</label> <input
									type="text" class="form-control" id="exampleInputEmail1"
									name="email" required="required" autocomplete="new-email" />
							</div>

							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									name="password" required="required" autocomplete="new-password" />
							</div>


						<div class="text-center">
							<button type="submit" class="btn btn-primary">Login</button>
							<br> <a href="resgister.jsp">Create Account</a>
						</div>
						</form>

					</div>

				</div>

			</div>
		</div>
	</div>
</body>
</html>