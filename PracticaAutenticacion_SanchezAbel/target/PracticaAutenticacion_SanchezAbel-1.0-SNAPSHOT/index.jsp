<%-- 
    Document   : index
    Created on : 6 nov 2024, 23:00:29
    Author     : Abe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Iniciar sesión</title>
    <link rel="stylesheet" href="./estilos/styles.css">
</head>

<body>
    <h1>Iniciar sesión</h1>
    <form action="Login" method="post">
        <div class="dato">
            <label for="user">Usuario: </label>
            <input type="text" name="user" required>
        </div>

        <div class="dato">
            <label for="password">Contraseña:</label>
            <input type="password" name="password" required>    
        </div>

        <div class="dato">
            <input type="submit" value="Entrar">
        </div>
    </form>
</body>

</html>