<%--
  Created by IntelliJ IDEA.
  User: Sintel
  Date: 06/10/2015
  Time: 12:12 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Listado</title>
    <g:javascript library="jquery"/>
    <r:layoutResources />
</head>

<body bgcolor="#8b0000">
    <div id ="titulo">
        <h1 align="center">Detalles</h1>
    </div>


        <div align="center">
            <g:form controller="persona" action="create">
                <button name="crear" type="submit">Crear</button>
                <g:select name="filtroBusqueda" from="${['Fecha', 'Nombre']}"/>
            </g:form>

        </div>


    <div id="buquedaPorFecha" >
        <g:render template="buscarPorFecha"/>
    </div>



    <di id = "listadoDetalle">
        <g:render template="listadoDetallePersona" model="[lista:lista]"/>
    </di>





</body>
</html>