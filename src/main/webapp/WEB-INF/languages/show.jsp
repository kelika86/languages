<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="ISO-8859-1">
	<title>Java</title>
	</head>
	<body>
		<h1><c:out value="${language.name}"/></h1>
		<h3><a href="/languages">Dashboard</a></h3>
		<p>Creator: <c:out value="${language.creator}"/></p>
		<p>Version: <c:out value="${language.version}"/></p>
		<a href="/languages/${language.id}/edit">Edit</a>
		<form action="/languages/${language.id}" method="POST">
			<input type="hidden" name="_method" value="delete">
			<input type="submit" value="Delete">
		
		</form>
	</body>
</html>