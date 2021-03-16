<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>App TP3 Andressa Guerra</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<title>App TP3 Andressa Guerra</title>
</head>
<body>
	<div class="jumbotron text-center">
	  <h1>${nome}</h1>
	  <p>${email}</p>
	</div>
	<div class="container">
		<p><a href="${git}" target="_blank">Projeto TP3 de Desenvolvimento Web com Java EE (Github)</a></p>
		<form action="/usuario" method="get">
			<button type="submit" class="btn btn-default">Novo usuário</button>
		</form>
	</div>
</body>
</html>