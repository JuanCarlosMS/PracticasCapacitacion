

<g:if test="${busqueda == 1}">
    <g:textField name="buscarNombre"/>
    <button onclick="busquedaNombre()">Buscar</button>
</g:if>
<g:if test="${busqueda == 2}">
    <input type="date" name="feechaInicioi" id="fechaInicio">
    <input type="date" name="fechafinal" id="fechaFinal">
    <button onclick="busquedaFechas()">Buscar</button>
</g:if>
<g:if test="${busqueda == 3}">
    <g:textField name="buscarApM"/>
    <button onclick="busquedaApM()">Busqueda</button>
</g:if>

<script>

    function busquedaNombre() {
        var busquedaNombre = document.getElementById("buscarNombre").value
        ${remoteFunction(controller: 'persona', action: 'buscar', params:'\'busqueda=\' + busquedaNombre', update: 'listadoDetalle')}

    }
    function busquedaFechas() {
        var fechaInicio = document.getElementById("fechaInicio").value
        var fechaFinal = document.getElementById("fechaFinal").value
        ${remoteFunction(controller: 'persona', action: 'buscarPersonaRangoFechas', params:'\'fechaInicio=\' + fechaInicio + \'&fechaFinal=\' + fechaFinal', update: 'listadoDetalle')}

    }
    function busquedaApM() {
        var busquedaApM = document.getElementById("buscarApM").value
        ${remoteFunction(controller: 'persona', action: 'buscarApMaterno', params:'\'busqueda=\' + busquedaApM', update: 'listadoDetalle')}

    }
</script>