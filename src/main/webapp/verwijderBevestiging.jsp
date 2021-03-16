<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="css/sample.css">
    <meta charset="UTF-8">
    <title>Verwijder een student</title>
</head>
<body>
<%@include file="header.jsp"%>

<main id="container">
    <article>
        <h2>Verwijder deze student</h2>

        <p>Ben je zeker dat je de student ${studentvoornaam}
           ${studentnaam} wil verwijderen?</p>
        <form action="StudentInfo?command=DELETE&naam=${studentnaam}&voornaam=${studentvoornaam}" method="post">
            <input type="submit" value="Zeker">
        </form>
        <form action="index.jsp">
            <input type="submit" value="Toch niet">
        </form>
    </article>
</main>
</body>
</html>