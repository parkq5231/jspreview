<%@ page import="java.util.ArrayList"%>
<%@ page import="emp.dao.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="my"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list.jsp</title>
</head>
<body>
	<c:forEach items="${list}" var="emp">
		이름: ${emp.first_name} ${emp.last_name}<br>
		연봉: <fmt:formatNumber value="${emp.salary }" />
		근무시작일: <fmt:formatDate value="${emp.hire_date}" dateStyle="long"/>
		<hr>
	</c:forEach>
	<my:login />
	<my:paging />

	이름 :
	<%=((ArrayList<EmpVO>) request.getAttribute("list")).get(0).getFirst_name()%>
	<hr>
	이름 : ${list[0].first_name}
	<hr>
	컨텍스트(어플이름) : ${pageContext.request.contextPath}
	<hr>
	<%=request.getHeader("User-Agent")%>
	<hr>
	${header["User-Agent"]}
</body>
</html>