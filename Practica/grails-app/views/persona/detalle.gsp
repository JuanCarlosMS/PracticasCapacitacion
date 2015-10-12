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
    <table border="2px" align="center">
        <thead>
        <tr>
            <td align="center">Nombre</td>
            <td align="center">Apellido Paterno</td>
            <td align="center">Apellido Materno</td>
            <td align="center">Edad</td>
            <td align="center">Fecha de Registro</td>
        </tr>
        </thead>
        <tbody>
        <g:each in="${personas}" var="persona">
            <tr>
                <td align="center">${persona.nombre}</td>
                <td align="center">${persona.apellidoPaterno}</td>
                <td align="center">${persona.apellidoMaterno}</td>
                <td align="center">${persona.edad}</td>
                <td align="center">${persona.fechaNacimiento.format("dd/M/yyyy")}</td>
            </tr>
        </g:each>
        </tbody>
    </table>
</body>
</html>