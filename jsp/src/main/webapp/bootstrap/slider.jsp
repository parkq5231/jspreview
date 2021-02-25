<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>slider</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
	integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jcarousel/0.3.9/jquery.jcarousel.min.js"></script>
<style>
.jcarousel {
	position: relative;
	overflow: hidden;
}

.jcarousel ul {
	width: 10000em;
	position: relative;
	list-style: none;
	margin: 0;
	padding: 0;
}

.jcarousel li {
	float: left;
}
</style>
<script>
	$(function() {
		$(".jcarousel").jcarousel();//end of jcaro

	})//end of function
</script>
</head>
<body>
	<div class="jcarousel" dir="rtl">
		<ul>
			<li><img src="../images/Jellyfish.jpg"></li>
			<li><img src="../images/Penguins.jpg"></li>
			<li><img src="../images/Tulips.jpg"></li>
		</ul>
	</div>
</body>
</html>