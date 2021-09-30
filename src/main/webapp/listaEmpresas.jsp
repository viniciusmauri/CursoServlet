<%@ page import="br.com.mvtech.gerenciador.Empresa" %>
<%@ page import="java.util.List" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE>
<html lang="en">
<head>
    <title>Lista de Empresas</title>
</head>
<body>

<c:if test="${not empty empresa}">
    Empresa ${ empresa } cadastrada com sucesso!!
</c:if>
<br/>

Lista de empresas: <br/>

<ul>
    <c:forEach items="${empresas}" var="empresa">

        <li>${empresa.nome} -  <fmt:formatDate value="${empresa.dataAbertura}" pattern="dd/MM/yyyy"/></li>
    </c:forEach>
</ul>
</body>
</html>
