<%-- 
    Document   : home
    Created on : 6 nov 2024, 23:00:52
    Author     : Abe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
        <link rel="stylesheet" href="./estilos/styles.css">
    </head>
    <body>
        <h1>Home</h1>
        <a href="./mi-perfil.jsp">Mi perfil</a>
        <a href="./registrar-pokemon.jsp">Registrar pokemon</a>
        <h2>Pokemones registrados: ${fn:length(sessionScope.pokemones)}</h2>
        <table border="1" class="tabla">
            <tr>
                <th>Numero</th>
                <th>Nombre</th>
                <th>Tipo</th>
                <th>Evolucion</th>
                <th>Poder</th>
                <th>Descripción</th>
            </tr>
            <c:forEach var="pokemon" items="${sessionScope.pokemones}">

                <tr class="datos-pokemon">
                    <td >${pokemon.numero}</td>
                    <td >${pokemon.nombre}</td>
                    <td >${pokemon.tipo}</td>
                    <td >${pokemon.evolucion}</td>
                    <td >${pokemon.poder}</td>
                    <td >${pokemon.descripcion}</td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
