<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
	<c:import url="cabecalho.jsp"></c:import>
	<!--  Cria o DAO -->
	<jsp:useBean id="dao" class="br.com.caelum.agenda.dao.ContatoDao">
		<table>
			<c:forEach var="contato" items="${dao.lista }">
				<tr>
					<td>${contato.nome}</td>
					<td>
						<c:if test="${not empty contato.email}">
							<a href="mailto:${contato.email}">${contato.email}</a>
						</c:if>
						
						<c:if test="${empty contato.email}">
							E-mail não informado
						</c:if>
					</td>
					<td>${contato.endereco}</td>
					<!--<td>${contato.dataNascimento.time}</td>-->
					<td><fmt:formatDate value="${contato.dataNascimento.time}" 
					pattern="dd/MM/yyyy" /></td>
				</tr>
			
			</c:forEach>
		</table>
	</jsp:useBean>
	<c:import url="Rodape.jsp"></c:import>
</body>
</html>