<g:select name="filtroBusqueda" from="${['Fechas', 'Nombre', 'Apellido Materno']}"
          noSelection="['':'Busqueda..']" onchange="criterioBusqueda()"/>

<script>
    function criterioBusqueda(){
        var filtroBusqeuda = document.getElementById("filtroBusqueda").value
        //var filtroBusqeuda = filtroBusqeuda.value()
        ${remoteFunction(controller: 'persona', action: 'busquedas', params:'\'filtro=\' + filtroBusqeuda', update: 'busqueda')}
    }
</script>