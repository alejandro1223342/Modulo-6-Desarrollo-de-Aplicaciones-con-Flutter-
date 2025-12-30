class Jugador {
  static String nombreJuego = 'Aventuras';
  final int id;
  late String nombre;
  var puntos = 0;
  dynamic extra;

  Jugador({required this.id});
}

void main() {
  var jugador1 = Jugador(id: 1);
  jugador1.nombre = 'Juan';
  jugador1.puntos = 100;
  jugador1.extra = "Premio";
  jugador1.extra = 10;
  jugador1.extra = true;

  print(
    'Jugador: ${jugador1.nombre}, Puntos: ${jugador1.puntos}, Extra: ${jugador1.extra}, Juego: ${Jugador.nombreJuego}',
  );
}
