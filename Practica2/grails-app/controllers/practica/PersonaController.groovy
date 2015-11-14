package practica

class PersonaController {

    def personaService
    def persona

    static defaultAction = "detalle"

    def index() {
        //List<Persona> personas = personaService.listarPersonas(params)
        //render(view: '/persona/index', model:[personas:personas])
        //render(view: '/persona/detalle')
    }

    def create() {
        render(view: '/persona/create')
    }

    def guardar(){
        persona = personaService.guardarPersona(params)
        //render(view: '/persona/detalle')
        redirect(action: 'detalle')
    }

    def detalle(){
        List<Persona> personas = personaService.listarPersonas(persona)
        render(view: '/persona/detalle', model: [personas:personas])
    }

    def buscar(){
        println("Entraste a buscar")
        println("params::::" + params)
        List<Persona> personas = personaService.buscarPersonaNombre(params)
        //render (view: '/persona/detalle', model: [personas:personas])
        render (template: "listadoDetallePersona", model: [personas: personas])
    }

    def buscarApMaterno()
    {
        println("Entraste a buscar APM")
        println("params::::" + params)
        List<Persona> personas = personaService.buscarPErsonaApellidoMaterno(params)
        render (template: "listadoDetallePersona", model: [personas: personas])
    }

    def buscarPersonaRangoFechas()
    {
        println("Entraste a buscar Buscar por Rango fechas")
        println("params::::" + params)
        List<Persona> personas = personaService.buscarPersonaPorFechasNacimiento(params)
        render (template: "listadoDetallePersona", model: [personas: personas])
    }

    def busquedas()
    {
        println("Criterio de busqeuda: " + params)
        String criterioBusqueda = params.filtro
        if (criterioBusqueda.equals("Nombre"))
        {
            println("Bucar por nombre")
            render (template: "buscarPorFecha", model: [busqueda: 1])
        }else if (criterioBusqueda.equals("Fechas")) {
            println("Bucar por Fecha")
            render (template: "buscarPorFecha", model: [busqueda: 2])
        }else if(criterioBusqueda.equals("Apellido Materno")){
            println("Bucar por Apellido Materno")
            render (template: "buscarPorFecha", model: [busqueda: 3])
        }
    }
}
