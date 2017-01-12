<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>${param.title}</title>
	
	<!-- ${pageContext.request.contextPath} Versteh ich nicht ganz???? -->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/overall.css" />
	
</head>
<body>

	<jsp:include page="/JSP/Template/header.jsp"/>

	
	<h1>${param.title}</h1>

	<%--  <jsp:include page="/WEB-INF/pages/${param.content}.jsp"/>--%>
	<jsp:include page="/JSP/Template/aside.jsp"/>
	<jsp:include page="/JSP/Template/footer.jsp"/>


</body>
</html>