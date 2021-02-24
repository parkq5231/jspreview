<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>employees.html</title>
<script
  src="https://code.jquery.com/jquery-3.5.1.js"
  integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
  crossorigin="anonymous"></script>
  <script>
  	$(function(){
  		//이메일중복채크
  		$("#btnEmail").on("click",function(){
  			//var param = {email : $("[name=email]").val()};
  			var param = "email=" + $("[name=email]").val();
  			//ajax
  			$.ajax({
  					url: "../EmailCheck?",
  					data : param,
  					//data : {email : $("[name=email]").val()},
  					success : function(response) {
  						$("#emailResult").html("이메일 " + response);
  					}
  				});
  			//
  		});
  	})
  </script>
</head>
<body>
<h3 id="top">사원등록</h3>
<c:set var="url" value="../EmpInsert" />
<c:if test="${not empty empVO.employee_id}">
<c:set var="url" value="../EmpUpdate" />
</c:if>
<form action="${url}" method="post" name="frm">
	employee_id <input type="number" name="employee_id"
				<c:if test="${not empty empVO.employee_id}"> readonly="readonly"</c:if> ><br>
	first_name  <input name="first_name" value="${empVO.first_name}"><br>
	last_name   <input name="last_name" value="${empVO.last_name}"><br>
	email       <input type="email" name="email" value="${empVO.email}">
				<button type="button" id="btnEmail">중복채크</button>
				<span id ="emailResult"></span><br>
	phone_number<input type="text" name="phone_number" value="${empVO.phone_number}"><br>
	hire_date   <input type="date" name="hire_date" value="${empVO.hire_date}"><br>
	job_id       
	<select name="job_id">
	<c:forEach var="job" items="${jobList}" >
		<option value="${job.job_id}"
		<c:if test="${job.job_id==empVO.job_id}">
		selected="selected"</c:if>>
		${job.job_title}</option>
	</c:forEach>	
	</select><br>
	department_id 
	<c:forEach var="dept" items="${deptList}">
		<input type="radio" value="${dept.department_id}"
			<c:if test="${dept.department_id == empVO.department_id}">
			checked="checked"</c:if>>
		${dept.department_name}
	</c:forEach><br>
	manager_id 
	<input type="text" name="manager_id">
	<input type="text" name="name">
	<button type="button" >사원검색</button><br>	

	<button type="submit">등록</button>
	<button type="reset">초기화</button>
</form>

</body>
</html>