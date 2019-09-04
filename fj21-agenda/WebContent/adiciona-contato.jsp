<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FormulÃ¡rio de Contatos</title>
	<link href="css/jquery.css" rel="stylesheet">
	<script src="js/jquery.js"></script>
	<script src="js/jquery-ui.js"></script>
</head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="caelum" %>
<body>
	<c:import url="cabecalho.jsp"></c:import>
	<h1>Adiciona Contatos</h1>
	<hr />
	<form action="adicionaContato">
		Nome: <input type="text" name="nome"><br>
		Email: <input type="text" name="email"><br>
		EndereÃ§o: <input type="text" name="endereco"><br>
		Data de Nascimento: <!--  <input type="text" name="dataNascimento"><br>--><caelum:campoData id="dataNascimento"/><br>
		<input type="submit" value="Gravar">
	</form>
	<c:import url="Rodape.jsp"></c:import>
</body>
</html>