import 'estudiante.dart';

void main() {

  final estudiante = Estudiante(nombre: 'Ana');
  final estudiante2 = Estudiante(nombre: 'Luis');

  estudiante.cuaderno = 'Matemáticas';
  estudiante2.cuaderno = 'Historia';

  print(estudiante.nombre);
  print(estudiante.cuaderno);
  print(estudiante2.nombre);
  print(estudiante2.cuaderno);

  print(Estudiante.pizarra);
  estudiante.esribirEnPizarra('Hoy es un buen día para aprender.');
  print(Estudiante.pizarra);

  print(Estudiante.obtenerContador());
}