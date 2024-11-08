<%-- 
    Document   : registrar-pokemon
    Created on : 6 nov 2024, 23:01:02
    Author     : Abe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Regsitrar pokemon</title>
    <link rel="stylesheet" href="./estilos/styles.css">
</head>

<body class="registrarPokemon">
    <h1>Registrar pokemon</h1>

    <form name="formRegistrar" action="RegistrarPokemon" method="POST">
        <div class="datos">
            <label for="numero">Número del Pokémon </label>
            <input type="number" name="numero">

        </div>
        <div class="datos">
            <label for="nombre">Nombre del Pokédex </label>
            <input type="text" name="nombre">


        </div>

        <div class="tipoPokemon datos">
            <div class="titulo">
                <label for="radio">Tipo de Pokémon</label>
            </div>

            <div class="elementos">
                <input type="radio" name="tipo" value="fuego">
                <label for="fuego">Fuego</label>

                <input type="radio" name="tipo" value="agua">
                <label for="agua">Agua</label>

                <input type="radio" name="tipo" value="planta">
                <label for="planta">Planta</label>

                <input type="radio" name="tipo" value="electrico">
                <label for="electrico">Eléctrico</label>
            </div>

        </div>

        <div class="datos">
            <label for="evolucion">Nivel de evolución</label>
            <select name="evolucion" id="evolucion">
                <option value="basico">Básico</option>
                <option value="primeraEvolucion">Primera evolución</option>
                <option value="segundaEvolucion">Segunda evolución</option>
            </select>
        </div>


        <div class="datos">
            <label for="poder">Nivel de poder:</label>
            <input type="range" name="poder" id="podernivel" max="100" min="1" value="50">

        </div>

        <div class="datos">
            <label for="descripcion">Descripción del Pokémon</label>
            <textarea name="descripcion" placeholder="Escribe una breve descripción" id="descripcionPokemon"></textarea>

        </div>

        <div class="datos">
            <input type="submit" value="agregarPokemon">
        </div>

        <div class="datos">
            <input type="reset" value="Limpiar formulario">

        </div>
    </form>
</body>

</html>