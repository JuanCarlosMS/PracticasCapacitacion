package practica

class Persona {
    String nombre
    String apellidoPaterno
    String apellidoMaterno
    Date fechaNacimiento
    Integer edad

    static constraints = {
        nombre nullable: false, blank: false
        apellidoPaterno nullable: false, blank: false
        apellidoMaterno nullable: false, blank: false
        fechaNacimiento nullable: false, blank: false
    }
}
