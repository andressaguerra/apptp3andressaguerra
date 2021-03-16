<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<title>App TP3 Andressa Guerra</title>
</head>
<body>
	<div class="jumbotron text-center">
		<h1>Cadastro de Usu�rios</h1>
	</div>
	<div class="container">
		<form action="/usuario/incluir" method="post">
			<div class="form-group">
				<label>Nome:</label> <input type="text" class="form-control" placeholder="Insira o seu nome" name="nome">
			</div>

			<div class="form-group">
				<label>E-mail:</label> <input type="email" class="form-control" placeholder="Insira o seu e-mail" name="email">
			</div>

			<div class="form-group">
				<label>Senha:</label> <input type="password" class="form-control" placeholder="Insira a sua senha" name="senha">
			</div>

			<button type="submit" class="btn btn-default">Cadastrar</button>
		</form>
	</div>
	<div class="container">
		<c:if test="${not empty usuarios}">
			<h2>Listagem de Usu�rios</h2>
			<table class="table table-striped">
				<thead>
					<tr>
						<th>Nome</th>
						<th>E-mail</th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="u" items="${usuarios}">
						<tr>
							<td>${u.nome}</td>
							<td>${u.email}</td>
							<td><a href="/usuario/${u.id}/excluir">Excluir</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</c:if>

		<c:if test="${empty usuarios}">
			<br>
			<p>Nenhum usu�rio cadastrado.</p>
		</c:if>
		
		<form action="/" method="get">
			<button type="submit" class="btn btn-default">Voltar</button>
		</form>
	</div>
</body>
</html>