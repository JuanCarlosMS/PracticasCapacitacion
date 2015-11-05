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
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'detalles.css')}" type="text/css">
</head>

<body bgcolor="#b22222">
    <div id ="titulo">
        <h1 align="center">Detalles</h1>
    </div>


        <div align="center">
            <g:form controller="persona" action="create">
                <button name="crear" type="submit">Crear</button>
            </g:form>

        </div>

    <div id="criterioBusqueda">
        <g:render template="selectorBusqueda"/>
    </div>

    <div id="busqueda">
        <g:render template="buscarPorFecha"/>
    </div>



    <div id="listadoDetalle" align="center">
        <g:render template="listadoDetallePersona" model="[lista:lista]"/>
    </div>







</body>
</html>