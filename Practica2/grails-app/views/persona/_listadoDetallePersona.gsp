<table border="2px" align="center">
    <thead>
    <tr>
        <td align="center">Nombre</td>
        <td align="center">Apellido Paterno</td>
        <td align="center">Apellido Materno</td>
        <td align="center">Fecha de Nacimiento</td>
        <td align="center">Edad</td>
    </tr>
    </thead>
    <tbody>
    <g:each in="${personas}" var="persona">
        <tr>
            <td align="center">${persona.nombre}</td>
            <td align="center">${persona.apellidoPaterno}</td>
            <td align="center">${persona.apellidoMaterno}</td>
            <td align="center">${persona.fechaNacimiento.format("dd/M/yyyy")}</td>
            <td align="center">${persona.edad}</td>
        </tr>
    </g:each>
    </tbody>
</table>