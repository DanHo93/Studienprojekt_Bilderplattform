<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<base href="${pageContext.request.requestURI}" />
	
	<title>Insert title here</title>
</head>
<body>
	<!-- <jsp:include page="Template/template.jsp"></jsp:include> -->
	
	<jsp:include page="Template/template.jsp">
	 	<jsp:param name="content" value=""/> 
		<jsp:param name="title" value=""/>
	</jsp:include>

</body>
</html>