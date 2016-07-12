<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Index</title>
<link
	href="<c:url value="/resources/materialize/css/materialize.min.css" />"
	rel="stylesheet" type="text/css" />

<meta name="viewport" content="width=device-width, initial-scale=1.0" />

</head>
<body>
	<nav>
		<div class="nav-wrapper orange">
			<a href="#" class="brand-logo"> Example Board </a>
			<!-- <ul id="nav-mobile" class="right hide-on-med-and-down">
				<li><a href="sass.html">Sass</a></li>
				<li><a href="badges.html">Components</a></li>
				<li><a href="collapsible.html">JavaScript</a></li>
			</ul> -->
		</div>
	</nav>

	<div class="container">
	<br><br>
		<div class="row">
			<div class="col s12 m12">
				<div class="row">
					<nav>
						<div class="nav-wrapper green">
							<a href="#" class="brand-logo center">게시판</a>
						</div>
					</nav>
				</div>
				<div class="row">
					<table class="z-depth-1 boarded highlight responsive-table">
						<thead>
							<tr>
								<th data-field="id">Name</th>
								<th data-field="name">Item Name</th>
								<th data-field="price">Item Price</th>
							</tr>
						</thead>

						<tbody>
							<tr>
								<td>Alvin</td>
								<td>Eclair</td>
								<td>$0.87</td>
							</tr>
							<tr>
								<td>Alan</td>
								<td>Jellybean</td>
								<td>$3.76</td>
							</tr>
							<tr>
								<td>Jonathan</td>
								<td>Lollipop</td>
								<td>$7.00</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript"
		src="<c:url value="/resources/jquery/jquery-3.0.0.min.js"/>"></script>
	<script type="text/javascript"
		src="<c:url value="/resources/materialize/js/materialize.min.js"/>"></script>
</body>
</html>