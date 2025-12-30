class Taller {
  static const String nombre = 'Taller Alejoss';
  static String mensajeGeneral = "Bienvenidos al taller de confianza";
  static int _totalReparaciones = 0;
  static int get totalReparaciones => _totalReparaciones;


  static cambiarMensaje(String nuevoMensaje) {
    mensajeGeneral = nuevoMensaje;
    return 'Mensaje actualizado: $nuevoMensaje';
  }

  static incrementarContador() {
    _totalReparaciones++;
  }

  static obtenerReparaciones() {
    return _totalReparaciones;
  }
}
