<%--
  Created by IntelliJ IDEA.
  User: Sintel
  Date: 06/10/2015
  Time: 12:12 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Crear persona</title>
</head>

<body bgcolor="#e6e6fa">
    <h1 align="center">Crear persona</h1>

    <h1>Esta es la seccion para agregar "personas"</h1>

    <div>
        <g:render template="formularioPersona"/>
    </div>

    <g:form controller="persona" action="detalle" >
        <button>Detalle</button>
    </g:form>

</body>
</html>