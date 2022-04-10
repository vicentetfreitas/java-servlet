<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List, br.com.alura.gerenciador.servlet.Empresa"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lista Empresas</title>
</head>
<body>
	<h3>Lista de empresas</h3>
	
	
	<c:if test="${ not empty empresa}">
	Empresa ${ empresa } cadastrada com sucesso!
	</c:if>

	
	<ul>
		<c:forEach items="${ listaEmpresa }" var="empresa">
		
			<li>${ empresa.nome } - <fmt:formatDate value="${ empresa.dataAbertura }" pattern="dd/MM/yyyy"/>
				<a href="/gerenciador/mostraEmpresa?id=${ empresa.id }">edita</a>
				<a href="/gerenciador/removeEmpresa?id=${ empresa.id }">remove</a>
			</li>
		</c:forEach>
	</ul>
</body>
</html>