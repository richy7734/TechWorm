<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@page isELIgnored="false"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
</head>
<body>
	<%@include file="header.jsp"%>
	<nav class="navbar navbar-default" style="margin: 0px;">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#navBar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">TechWorm</a>
		</div>
		<div class="collapse navbar-collapse" id="navBar">
			<ul class="nav navbar-nav">
				<li><a href="home">Home</a></li>
				<li><a href="products">Products</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="active"><a href="registration"><span
						class="glyphicon glyphicon-log-in"></span> Login</a></li>
				<li><a href="#"><span
						class="glyphicon glyphicon-shopping-cart"></span>Cart</a></li>
			</ul>
		</div>
	</div>
	</nav>
	<br>
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-6">
				
			<div class="col-sm-6">
				<div class="panel panel-danger">
					<div class="panel-heading">Registration</div>
					<div class="panel-body">
						<center>
							<form:form action="./register" commandName="regCommand"
								method="POST">
								<div class = "row">
									<div class = "col-sm-4">
										<form:input type="text" path="name" placeholder="Name" />
									</div>
								</div>
								<form:input type="email" path="email" placeholder="E-mail" />
								<br>
								<br>
								<form:input type="password" path="password"
									placeholder="Password" />
								<br>
								<br>
								<form:input type="text" path="phone" placeholder="Phone number" />
								<br>
								<br>
								<form:input type="address" path="address" placeholder="Address" />
								<br>
								<br>
								<input type="submit" class="btn btn-danger" />
								<br>
								<br>
							</form:form>
						</center>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="footer.jsp"%>
</body>
</html>