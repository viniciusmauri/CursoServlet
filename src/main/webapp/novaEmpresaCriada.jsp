<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE>
<html lang="en">
<head>
    <title>Nova Empresa Criada</title>
</head>
<body>
<c:if test="${not empty empresa}">
    Empresa ${ empresa } cadastrada com sucesso!!
</c:if>
<c:if test="${empty empresa}">
    Nenhuma empresa foi cadastrada!!
</c:if>

</body>
</html>