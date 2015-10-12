<%--
  Created by IntelliJ IDEA.
  User: Sintel
  Date: 06/10/2015
  Time: 12:12 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body bgcolor="#8b0000">
    <h1 align="center">Detalles</h1>


    <g:form controller="persona" action="create">
        <div align="center">
            <button name="crear" type="submit">Crear</button>
            <g:textField name="busquedaPorFechaNacimiento"/>
            <button>Busqueda</button>
        </div>
    </g:form>


    <di id = "listadoDetalle">
        <g:render template="listadoDetallePersona"/>
    </di>
</body>
</html>