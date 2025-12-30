class Empleado {
  final String nombre;

  Empleado(this.nombre);

  actualizarMensaje(String nuevoMensaje) {
    return 'Empleado $nombre actualizó el mensaje a: $nuevoMensaje';
  }
}