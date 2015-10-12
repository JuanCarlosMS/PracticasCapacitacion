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

<body>
    <h1>Crear persona</h1>
        <g:form controller = "persona" action = "guardar">
            <br>Nombre<g:textField name="nombre">nombre</g:textField></br>
            <br>Apellido Paterno<g:textField name="apellidoPaterno"></g:textField><br>
            <br>Apellido Materno<g:textField name="apellidoMaterno"></g:textField></br>
            <br>Edad<g:textField name="edad"></g:textField></br>
            <g:submitButton name="botonCrear" value="Crear" />
        </g:form>
</body>
</html>