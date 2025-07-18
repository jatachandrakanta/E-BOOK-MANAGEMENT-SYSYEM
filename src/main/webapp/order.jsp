<%@page import="com.entinty.Book_Order"%>
<%@page import="java.util.List"%>
<%@page import="com.DAo.BookOrderDAoImpl"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.entinty.user"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Order</title>
<%@include file="all_component/all_css.jsp"%>
		<c:if test="${empty userobj}">
	<c:redirect url="../login.jsp"/>
	
	</c:if>
</head>
<body style="background-color: #f0f1f2">
	<%@include file="all_component/Navbar.jsp"%>


	<c:if test="${empty userobj}">
		<c:redirect url="login.jsp"></c:redirect>
	</c:if>
	<div class="container p-1">
		<h3 class="text-center text-primary">Your Order</h3>
		<table class="table table-striped mt-3">
			<thead class="bg-primary text-white">
				<tr>
					<th scope="col">Order Id</th>
					<th scope="col">Name</th>
					<th scope="col">Book Name</th>
					<th scope="col">Author</th>
					<th scope="col">Price</th>
					<th scope="col">Payment Type</th>

				</tr>
			</thead>
			<tbody>

				<%
				user u = (user) session.getAttribute("userobj");
				BookOrderDAoImpl dao = new BookOrderDAoImpl(DBConnect.getConn());
				List<Book_Order> blist = dao.getBook(u.getEmail());
				for (Book_Order b : blist) {
				%>


				<tr>
					<th scope="row"><%=b.getOredeId()%></th>
					<td><%=b.getUserName()%></td>
					<td><%=b.getBookName()%></td>
					<td><%=b.getAuthor()%></td>
					<td><%=b.getPrice()%></td>
					<td><%=b.getPaymentType()%></td>

				</tr>
				<%
				}
				%>

			</tbody>
		</table>
	</div>
</body>
</html>