<%-- 
    Document   : mi-perfil
    Created on : 6 nov 2024, 23:00:46
    Author     : Abe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="jakarta.servlet.http.HttpSession"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mi perfil</title>
    <link rel="stylesheet" href="./estilos/styles.css">
    </head>
    <body>
        <h1>Mi perfil</h1>
        <%
            String username = (String) session.getAttribute("usuario");
        %>
            <p>Bienvenido, <span> <%= username %> </span></p>
       
    </body>
</html>
