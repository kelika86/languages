<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="ISO-8859-1">
	<title>Languages</title>
	</head>
	<body>
		<table>
			<thead>
				<tr>
					<th>Name</th>
					<th>Creator</th>
					<th>Version</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${languages}" var="language">
				<tr>
					<td><a href="/languages/${language.id}"><c:out value="${language.name}"/></a></td>
					<td><c:out value="${language.creator}"/></td>
					<td><c:out value="${language.version}"/></td>
					<td>
						<a href="/languages/${language.id}/edit">Edit</a>
							<form action="/languages/${language.id}" method="POST">
							<input type="hidden" name="_method" value="delete">
	    					<input type="submit" value="Delete">
							</form>
					</td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
		<h1>New Language</h1>
		<form:form action="/languages" method="POST" modelAttribute="newlanguage">
		<p>
			<form:label path="name">Name</form:label>
			<form:errors path="name"/>
			<form:input path="name"/>
		</p>
		<p>
			<form:label path="creator">Creator</form:label>
			<form:errors path="creator"/>
			<form:textarea path="creator"/>
		</p>
		<p>
			<form:label path="version">Version</form:label>
			<form:errors path="version"/>
			<form:input type="number" path="version"/>
		</p>
		<input type="submit" value="Submit"/>
		</form:form>
		
	</body>
</html>