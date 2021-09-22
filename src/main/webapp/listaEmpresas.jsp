<%@ page import="br.com.mvtech.gerenciador.Empresa" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    Lista de empresas: <br/>
    <ul>
        <%
            List<Empresa> lista = (List<Empresa>) request.getAttribute("empresas");
            for (Empresa empresa : lista) {
        %>
        <li>
        <%=empresa.getNome()%>
        </li>
        <%
        }
        %>
    </ul>
</body>
</html>
