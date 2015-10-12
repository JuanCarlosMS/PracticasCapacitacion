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

    <table>
        <g:form controller="persona" action = "guardar">
            <tr>
                <td>Nombre:</td>
                <td><g:textField name="nombre">nombre</g:textField></td>
            </tr>
            <tr>
                <td>Apellido Paterno:</td>
                <td><g:textField name="apellidoPaterno"></g:textField></td>
            </tr>
            <tr>
                <td>Apellido Materno:</td>
                <td><g:textField name="apellidoMaterno"></g:textField></td>
            </tr>
            <tr>
                <td>Edad:</td>
                <td><g:textField name="edad"></g:textField></td>
            </tr>
            <tr>
                <td><g:submitButton name="botonCrear" value="Crear" /></td>
            </tr>
        </g:form>
    </table>

</body>
</html>