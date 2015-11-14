package practica

import grails.transaction.Transactional
import practica.Persona

import java.text.SimpleDateFormat;

@Transactional
class PersonaService {

    def utilService

    Persona guardarPersona(params) {

        Persona persona = new Persona(params);
        //named parameters o definir abajo los atributos, o simplemente params
        //persona.apellidoMaterno = "hola"
        //persona.edad = 22;
        persona.fechaNacimiento = params.fechaNacimineto
        persona.edad = utilService.calcularEdad(persona.fechaNacimiento)
        persona.save(flush: true, failOnError: true);
        persona
        //la ultima instruccion que lee es lo que devuelve return
    }

    Persona consultarPersona() {
        persona.edad = utilService.calcularEdad(persona.fechaNacimiento)
        persona
    }

    List<Persona> buscarPersonaNombre(params){
        println("Params service:::: " + params)
        List<Persona> listaPersonaFecha = Persona.findAllByNombre(params?.busqueda)
        listaPersonaFecha
    }

    List<Persona> buscarPErsonaApellidoMaterno(params){
        println("Params service:::: " + params)
        List<Persona> listaPersonaApMaterno = Persona.findAllByApellidoMaterno(params?.busqueda)
        listaPersonaApMaterno
    }

    List<Persona> buscarPersonaPorFechasNacimiento(params){
        println("Params service:::: " + params)
        String fechaInicial = params?.fechaInicio
        String fechaFinal = params?.fechaFinal
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd")
        Date dateInicial = formatter.parse(fechaInicial)
        Date dateFinal = formatter.parse(fechaFinal)

        //Date fecha = new Date(dia, mes, anio)
        List<Persona> listaPersonaFechas = Persona.findAllByFechaNacimientoBetween(dateInicial, dateFinal)
        listaPersonaFechas
    }

    List<Persona> listarPersonas(params) {

        List<Persona> listaPersonas = Persona.findAll()
        listaPersonas
    }
}
