<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Nova Empresa</title>
</head>
<body>
	<!-- Java Servlet Page - JSP -->
	<h2>Empresa cadastrada com sucesso.</h2>
	<h3>${ empresa }</h3>
	Empresa <strong>${ empresa }</strong> cadastrada com sucesso
	
	<c:if test="${ not empty empresa}">
	Empresa ${ empresa } cadastrada com sucesso!
	</c:if>
	<c:if test="${ not empty empresa}">
	Nenhuma empresa cadastrada
	</c:if>
</body>
</html>