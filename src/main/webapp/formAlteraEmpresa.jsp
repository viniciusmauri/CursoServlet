<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:url value="alteraEmpresa" var="linkServletNovaEmpresa"/>
<html>
<head>
    <title>Alterar Empresa</title>
</head>
<body>

<form action="${linkServletNovaEmpresa}" method="post">
    Nome: <input type="text" name="nome" value="${empresa.nome}"/>
    Data Abertura: <input type="text" name="data" value="<fmt:formatDate value="${empresa.dataAbertura}" pattern="dd/MM/yyyy"/>"/>
    <button type="submit">Cadastrar Empresa</button>
</form>

</body>
</html>
