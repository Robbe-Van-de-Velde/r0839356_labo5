<%@page import="java.util.Collection"%>
<%@ page import="be.ucll.labo5_startoplossing.domain.model.Student" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/sample.css">
<meta charset="UTF-8">
<title>Overzicht Studenten</title>
</head>
<body>
<jsp:include page="header.jsp">
	<jsp:param name="page" value="overview"/>
</jsp:include>

	<main id="container">
	<article>
		<h2>Overzicht studenten</h2>
				<c:choose>
				<c:when test = "${studenten.size() == 0}">
					<p>Er zijn nog geen studenten toegevoegd.</p>
				</c:when>
				<c:otherwise>
					<table id="overview">
						<tr>
							<th>Naam</th>
							<th>Voornaam</th>
							<th class="getal">Leeftijd</th>
							<th>Studierichting</th>
						</tr>
			<c:forEach var="student" items = "${studenten}">
			<tr id="${student.getNaam()}">
				<td>${student.getNaam()}</td>
				<td>${student.getVoornaam()}</td>
				<td class="getal">${student.getLeeftijd()}</td>
				<td>${student.getStudierichting()}</td>
				<td><a href="StudentInfo?command=DELETECONFIRM&naam=${student.getNaam()}&voornaam=${student.getVoornaam()}">Verwijder
				</a></td>
			</tr>

			</c:forEach>
					</table>
			</c:otherwise>
			</c:choose>
	</article>
	</main>
</body>
</html>