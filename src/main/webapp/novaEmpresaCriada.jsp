<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<%
    String nomeEmpresa = (String) request.getAttribute("empresa");
    System.out.println(nomeEmpresa);
%>

<html lang="en"><head><title>Nova Empresa Criada</title></head><body>

Empresa <%= nomeEmpresa%> cadastrada com sucesso!!
</body></html>