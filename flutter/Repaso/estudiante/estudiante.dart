class Estudiante {
  final String nombre;
  late String cuaderno;
  static String pizarra = 'Limpia';
  static const escuelta = "14 de julio";
  static int contadorEstudiantes = 0;

  void esribirEnPizarra(String mensaje) {
    pizarra = mensaje;
  }

  static obtenerContador() {
    return contadorEstudiantes;
  }

  Estudiante({required this.nombre}) {
    contadorEstudiantes++;
  }
}
