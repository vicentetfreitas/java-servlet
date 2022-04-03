<%
String nomeEmpresa = (String)request.getAttribute("empresa");
System.out.println(nomeEmpresa);

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Nova Empresa</title>
</head>
<body>
	<!-- Java Servlet Page - JSP -->
	<h2>Empresa cadastrada com sucesso.</h2>
	<h3><%out.println(nomeEmpresa);%></h3>
	Empresa <strong><%= nomeEmpresa %></strong> cadastrada com sucesso
</body>
</html>