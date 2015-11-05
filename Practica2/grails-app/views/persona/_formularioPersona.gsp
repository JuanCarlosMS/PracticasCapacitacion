<%
    def date = new Date()
%>
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
            <td>Fecha de nacimiento:</td>
            <td><g:datePicker name="fechaNacimineto" value="${new Date()}"
                              precision="day" noSelection="['':'-Choose-']" years="${1900..2015}"/></td>
        </tr>
        <tr>
            <td><g:submitButton name="botonCrear" value="Crear" /></td>
        </tr>
    </g:form>
</table>