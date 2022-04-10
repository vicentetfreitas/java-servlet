<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<c:url value="/alteraEmpresa" var="linkServeletNovaEmpresa" />

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Formulário nova empresa</title>
</head>
<body>

	<form action="${linkServeletNovaEmpresa }" method="post">
		Nome:<input type="text" name="nome" value="${empresa.nome}" /> <input
			type="submit" /> Data abertura: <input type="text" name="data"
			value="<fmt:formatDate value="${ empresa.dataAbertura }" pattern="dd/MM/yyyy"/>" />
	</form>

</body>
</html>