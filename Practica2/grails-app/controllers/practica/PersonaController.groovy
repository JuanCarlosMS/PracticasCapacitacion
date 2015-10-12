package practica

class PersonaController {

    def personaService
    def persona

    def index() {
        //List<Persona> personas = personaService.listarPersonas(params)
        //render(view: '/persona/index', model:[personas:personas])
        render(view: '/persona/detalle')
    }

    def create() {
        render(view: '/persona/create')
    }

    def guardar(){
        persona = personaService.guardarPersona(params)
        //render(view: '/persona/detalle')
        detalle()
    }

    def detalle(){
        List<Persona> personas = personaService.listarPersonas(persona)
        render(view: '/persona/detalle', model: [personas:personas])
    }
}
