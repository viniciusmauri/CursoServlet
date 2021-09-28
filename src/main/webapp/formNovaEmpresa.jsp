<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url value="novaEmpresa" var="linkNovaEmpresa"/>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Cadastrar Nova Empresa</title>
</head>
<body>


	<form action="${linkNovaEmpresa}" method="post">

		Nome: <input type="text" name="nome"/>
		Data Abertura: <input type="text" name="data"/>

		<button type="submit">Cadastrar Empresa</button>
	</form>

</body>
