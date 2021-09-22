<%@ page import="br.com.mvtech.gerenciador.Empresa" %>
<%@ page import="java.util.List" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    Lista de empresas: <br/>

    <ul>
        <c:forEach items="${empresas}" var="empresa">
        <li>%{empresa.nome}</li>
        </c:forEach>
    </ul>
</body>
</html>
