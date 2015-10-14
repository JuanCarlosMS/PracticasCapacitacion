<g:textField name="buscarFecha"/>
<button onclick="myFuncion()">Buscar2</button>

<script>
    function myFuncion(){
        var fechaABuscar = document.getElementById("buscarFecha").value
        ${remoteFunction(controller: 'persona', action: 'buscar', params:'\'fecha=\' + fechaABuscar', update: 'listadoDetalle')}
    }
</script>