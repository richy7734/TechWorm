<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>

<%@page isELIgnored="false"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>

<style type="text/css">
::selection {
  background-color: #b5e2e7;
}

::-moz-selection {
  background-color: #8ac7d8;
}

body {
  background: #4D5656;
}

.container {
  display: -webkit-flex;
  display: flex;
  height: 100%;
}

#logbox {
  padding: 10px;
  margin: 50px auto;
  width: 340px;
  background-color: #fff;
  -webkit-box-shadow: 0 1px 5px rgba(0, 0, 0, 0.25);
  -moz-box-shadow: 0 1px 5px rgba(0, 0, 0, 0.25);
  box-shadow: 0 1px 5px rgba(0, 0, 0, 0.25);
}

#logbox h1 {
  text-align: center;
  font-size: 175%;
  color: #757575;
  font-weight: 300;
}

#logbox h1, input {
  font-family: "Open Sans", Helvetica, sans-serif;
}

.input {
  width: 75%;
  height: 50px;
  display: block;
  margin: 0 auto 15px;
  padding: 0 15px;
  border: none;
  border-bottom: 2px solid #ebebeb;
}
.input:focus {
  outline: none;
  border-bottom-color: #3CC !important;
}
.input:hover {
  border-bottom-color: #dcdcdc;
}
.input:invalid {
  box-shadow: none;
}

.pass:-webkit-autofill {
  -webkit-box-shadow: 0 0 0 1000px white inset;
}

.inputButton {
  position: relative;
  width: 85%;
  height: 50px;
  display: block;
  margin: 30px auto 30px;
  color: white;
  background-color: #3CC;
  border: none;
  -webkit-box-shadow: 0 5px 0 #2CADAD;
  -moz-box-shadow: 0 5px 0 #2CADAD;
  box-shadow: 0 5px 0 #2CADAD;
}
.inputButton:hover {
  top: 2px;
  -webkit-box-shadow: 0 3px 0 #2CADAD;
  -moz-box-shadow: 0 3px 0 #2CADAD;
  box-shadow: 0 3px 0 #2CADAD;
}
.inputButton:active {
  top: 5px;
  box-shadow: none;
}
.inputButton:focus {
  outline: none;
}

</style>

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
				<li class="active"><a href="login"><span
						class="glyphicon glyphicon-log-in"></span>Login</a></li>
				<li><a href="#"><span
						class="glyphicon glyphicon-shopping-cart"></span>Cart</a></li>
			</ul>
		</div>
	</div>
	</nav>

	<div class="container">
		<div class="col-md-6">
			<div id="logbox">
				<form:form id="signup" method="post" commandName = "regCommand" action="./register">
					<h1>Don't have an Account !!</h1>
					<center><p>Register Here</p></center>
					<form:input path="name" type="text"
						placeholder="Name" 
						autofocus="autofocus" required="required" class="input pass" />
					<form:input path="username" type="text"
						placeholder="Choose Username"  
						autofocus="autofocus" required="required" class="input pass" />
					<form:input path="password" type="password"
						placeholder="Password" required="required"
						class="input pass" />
					<input name="password2"
						type="password" placeholder="Confirm Password" required="required"
						class="input pass" /> 
					<form:input path="email" type="email"
						placeholder="Email address" class="input pass" />
					<form:input path="phone" type="text" placeholder="Phonen Number" 
						autofocus="autofocus" required="required" class="input pass" />
					<form:input path="address" type="text" placeholder="Address" 
						autofocus="autofocus" required="required" class="input pass" />  
					<input type="submit" value="Sign Up" class="inputButton" />
				</form:form>
			</div>
		</div>
		<!--col-md-6-->

		<div class="col-md-6">
			<div id="logbox">
				<form id="signup" method="post" action="j_spring_security_check">
					<h1>Login</h1>
					<input name="j_username" type="text"
						placeholder="Username" class="input pass" /> 
					<input name="j_password" type="password"
						placeholder="Password" required="required"
						class="input pass" />
					<input type="submit" value="Login"
						class="inputButton" />
				</form>
				<font color = "red">
					<span>${sessionScope[SPRING_SECURITY_LAST_EXCEPTION].message}</span>				
				</font>
			</div>
		</div>
	</div>

	<%@include file="footer.jsp"%>
</body>
</html>