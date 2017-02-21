<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@page isELIgnored="false"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<style>
.container {
	padding: 80px 120px;
}

.nav li {
	font-size: 1.5em;
}

.bg-1 {
	background: #2d2d30;
	color: #bdbdbd;
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
					<li class="active"><a href="home">Home</a></li>
					<li><a href="products">Products</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="logout"><span
							class="glyphicon glyphicon-log-out"></span>Login</a></li>
					<li><a href="#"><span
							class="glyphicon glyphicon-shopping-cart"></span>Cart</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<div id="homeCarousel" class="carousel slide" data-ride="carousel">

		<ol class="carousel-indicators">
			<li data-target="#homeCarousel" data-slide-to="0" class="actice"></li>
			<li data-target="#homeCarousel" data-slide-to="1"></li>
			<li data-target="#homeCarousel" data-slide-to="2"></li>
			<li data-target="#homeCarousel" data-slide-to="3"></li>
		</ol>

		<div class="carousel-inner" role="listbox">

			<div class="item active">
				<img alt="nvidia" src="resources/images/carousel/nvidia.jpg">
			</div>

			<div class="item">
				<img alt="msi" src="resources/images/carousel/msi.jpg">
			</div>

			<div class="item">
				<img alt="hp" src="resources/images/carousel/hp.jpg">
			</div>

			<div class="item">
				<img alt="intel" src="resources/images/carousel/intel.jpg">
			</div>

		</div>
	</div>

	<div>

		<c:if test="">
			<c:forEach items="${p }" var="p">

			</c:forEach>
		</c:if>
	</div>

	<div class="row text-center">
		<div class="col-sm-4">
			<div class="thumbnail">
				<img src="paris.jpg" alt="Paris">
				<p>
					<strong>Paris</strong>
				</p>
				<p>Fri. 27 November 2015</p>
				<button class="btn">Buy Tickets</button>
			</div>
		</div>
	</div>
	<%@include file="footer.jsp"%>
</body>
</html>