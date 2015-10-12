package practica

class PersonaController {

    def personaService
    def persona

    def index() {
        List<Persona> personas = personaService.listarPersonas(params)
        render(view: '/persona/index', model:[personas:personas])
    }

    def create() {
        render(view: 'create')
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
