

<g:if test="${busqueda == 1}">
    <g:textField name="buscarNombre"/>
    <button onclick="myFuncion()">Buscar</button>
</g:if>
<g:if test="${busqueda == 2}">
    <g:datePicker name="fechaDesde" value="${new Date()}"
                  precision="day" years="${1900..2015}"/>
    <br>
    <g:datePicker name="fechaHasta" value="${new Date()}"
                  precision="day" years="${1900..2015}"/>
    <button onclick="myFuncion()">Buscar</button>
</g:if>
<g:if test="${busqueda == 3}">
    <g:textField name="buscarApM"/>
    <button onclick="${remoteFunction(controller: 'persona', action: 'buscar', params:'\'apM=\' + this.value'  , update: 'listadoDetalle')}">Buscar</button>
</g:if>

<script>
    function myFuncion(){
        var busquedaNombre = document.getElementById("buscarNombre").value
        var busquedaFechaDesde = document.getElementById("fechaDesde").value
        var busquedaFechaHasta = document.getElementById("fechaHasta").value
        var busquedaApM = document.getElementById("buscarApM").value
        ${remoteFunction(controller: 'persona', action: 'buscar', params:'\'busquedaNombre=\' + busquedaNombre' , update: 'listadoDetalle')}

    }
</script>