<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="/novaEmpresa" var="linkServeletNovaEmpresa" />
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Formul�rio nova empresa</title>
</head>
<body>



	<form action="linkServeletNovaEmpresa" method="post">
		Nome:<input type="text" name="nome" /> <input type="submit" />

	</form>

</body>
</html>