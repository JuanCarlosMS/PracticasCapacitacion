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
    <h1 align="center">Detalles</h1>


    <g:form controller="persona" action="create">
        <div align="center">
            <button name="crear" type="submit">Crear</button>
            <g:select name="filtroBusqueda" from="${['Fecha', 'Nombre']}"/>

        </div>
    </g:form>


    <g:textField name="buscarFecha"/>
    <button onclick="myFuncion()">Buscar2</button>

    <script>
        function myFuncion(){
            var fechaABuscar = document.getElementById("buscarFecha").value
            ${remoteFunction(controller: 'persona', action: 'buscar', params:'\'fecha=\' + fechaABuscar')}
        }
    </script>


    <di id = "listadoDetalle">
        <g:render template="listadoDetallePersona"/>
    </di>
</body>
</html>