<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/sample.css">
<meta charset="UTF-8">
<title>Studenten</title>
</head>
<body>
<jsp:include page="header.jsp">
	<jsp:param name="page" value="zoek"/>
</jsp:include>

	<main id="container">
	<article>
		<h1>Zoek een student</h1>
		<form method="Get" action="StudentInfo" novalidate>
			<p>Wie zoek je?</p>
			<input type="hidden" name="command" value="FIND" >
			<p class="form-group">
				<label class="control-label" for="naam">Naam: </label> <input
					id="naam" name="naam" type="text" value="" required>
			</p>
			<p class="form-group">
				<label class="control-label" for="voornaam">Voornaam: </label> <input
					id="voornaam" name="voornaam" type="text" value="">
			</p>

			<p>
				<label for="zoek">&nbsp;</label> <input id="zoek" type="submit"
					value="Vind Student">
			</p>

		</form>
	</article>
	</main>
</body>
</html>