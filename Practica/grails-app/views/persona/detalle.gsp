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

<body>
    <h1>Detalles</h1>
    <table>
        <thead>
        <tr>
            <td>Nombre</td>
            <td>Apellido Paterno</td>
            <td>Apellido Materno</td>
            <td>Edad</td>
            <td>Fecha</td>
        </tr>
        </thead>
        <tbody>
        <g:each in="${personas}" var="persona">
            <tr>
                <td>${persona.nombre}</td>
                <td>${persona.apellidoPaterno}</td>
                <td>${persona.apellidoMaterno}</td>
                <td>${persona.edad}</td>
                <td>${persona.fechaNacimiento}</td>
            </tr>
        </g:each>
        </tbody>
    </table>
</body>
</html>