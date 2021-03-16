<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/sample.css">
<meta charset="UTF-8">
<title>Voeg een student toe</title>
</head>
<body>
<jsp:include page="header.jsp">
	<jsp:param name="page" value="form"/>
</jsp:include>

	<main id="container">
	<article>
		<h2>Voeg een student toe</h2>
		<form method="POST" action="StudentInfo?command=ADD" novalidate>
			<fieldset>
				<legend>Student informatie</legend>
				<p class="form-group">
					<label class="control-label" for="naam">Naam: </label> <input
						id="naam" name="naam" type="text" value="" required>
				</p>
				<p class="form-group">
					<label class="control-label" for="voornaam">Voornaam: </label> <input
						id="voornaam" name="voornaam" type="text" value="">
				</p>
				<p class="form-group">
					<label class="control-label" for="leeftijd">Leeftijd: </label> <input
						id="leeftijd" name="leeftijd" type="text" value="">
				</p>
				<p class="form-group">
					<label class="control-label" for="studierichting">Studierichting: </label> <input
						id="studierichting" name="studierichting" type="text" value="">
				</p>
			</fieldset>
			<p>
				<label for="bewaar">&nbsp;</label> <input id="bewaar" type="submit"
					value="Voeg Student Toe">
			</p>

		</form>
	</article>
	</main>
</body>
</html>