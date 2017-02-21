<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin</title>

<style type="text/css">
.list-group-item:first-child {
	border-top-right-radius: 0;
	border-top-left-radius: 0;
}

.list-group-item:last-child {
	border-bottom-right-radius: 0;
	border-bottom-left-radius: 0;
}

/* Remove border and add padding to thumbnails */
.thumbnail {
	padding: 0 0 15px 0;
	border: none;
	border-radius: 0;
}

.thumbnail p {
	margin-top: 15px;
	color: #555;
}
/*Image size*/
.thumbnail img {
	height: 210px;
	width: 100px;
}

/* Black buttons with extra padding and without rounded borders */
.btn {
	padding: 10px 20px;
	background-color: #333;
	color: #f1f1f1;
	border-radius: 0;
	transition: .2s;
}

/* On hover, the color of .btn will transition to white with black text */
.btn:hover, .btn:focus {
	border: 1px solid #333;
	background-color: #fff;
	color: #000;
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
			</ul>
		</div>
	</div>
	</nav>
	<div class="row text-center">
		<div class="col-sm-4">
			<div class="thumbnail">
				<img src="resources/images/admin/add.png" alt="Paris">
				<p>
					<strong>Add Products</strong>
				</p>
				<button class="btn" data-toggle="modal" data-target="#addModal">Click</button>
			</div>
		</div>
		<div class="col-sm-4">
			<div class="thumbnail">
				<img src="resources/images/admin/edit.png" alt="New York">
				<p>
					<strong>Edit Products</strong>
				</p>
				<button class="btn" data-toggle="modal" data-target="#editModal">Click</button>
			</div>
		</div>
		<div class="col-sm-4">
			<div class="thumbnail">
				<img src="resources/images/admin/del.png" alt="San Francisco">
				<p>
					<strong>Delete Products</strong>
				</p>
				<button class="btn" data-toggle="modal" data-target="#delModal">Click</button>
			</div>
		</div>
	</div>
	<div id="addModal" class="modal fade" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Add Products</h4>
				</div>
				<div class="modal-body">
					<form:form action = "./addProduct" commandName = "addProduct" method = "POST">
						<form:input path="pname" placeholder = "Product Name"/>
						<br/>
						<form:input path="discription" placeholder = "Discription"/>
						<br/>
						<form:input path="category" placeholder = "Category"/>
						<br/>
						<form:input path="stock" placeholder = "Stock"/>
						<br/>
						<form:input path="cost" placeholder = "Cost"/>
						<br>
						<input type = "submit" value = "ADD">
						<br/>
					</form:form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>

		</div>
	</div>
	<div id="editModal" class="modal fade" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Modal Header</h4>
				</div>
				<div class="modal-body">
					<p>Some text in the modal.</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>

		</div>
	</div>
	<div id="delModal" class="modal fade" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Modal Header</h4>
				</div>
				<div class="modal-body">
					<p>Some text in the modal.</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>

		</div>
	</div>

</body>
</html>