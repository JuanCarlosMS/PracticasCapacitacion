package practica

import grails.transaction.Transactional
import practica.Persona;

@Transactional
class PersonaService {

    def utilService

    Persona guardarPersona(params) {

        Persona persona = new Persona(params);
        //named parameters o definir abajo los atributos, o simplemente params
        //persona.apellidoMaterno = "hola"
        //persona.edad = 22;
        persona.fechaNacimiento = new Date()
        persona.save(flush: true, failOnError: true);
        persona
        //la ultima instruccion que lee es lo que devuelve return
    }

    Persona consultarPersona(Long id){
        Persona persona = Persona.get(id)
        persona.edad = utilService.calcularEdad(persona.fechaNacimiento)
        persona
    }

    List<Persona> listarPersonas(params){
        //params.nombre = "juan"
        //params.apellidoPaterno = "Leal"
        //params.apellidoMaterno = "Sion"
        //params.fechaNacimiento = new Date()
        //params.edad = 22
        //guardarPersona(params)
        List<Persona> listaPersonas = Persona.findAll()
        listaPersonas
    }
}
