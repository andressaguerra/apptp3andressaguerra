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
	<div class="container">
		<h3>${nome}</h3>
		<h4>${email}</h4>
		<h4><a href="${git}">GIT</a></h4>
		
		<form action="/usuario" method="get">
			<button type="submit" class="btn btn-default">Novo usuário</button>
		</form>
	</div>
</body>
</html>