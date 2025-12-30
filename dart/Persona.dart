class Persona {
  String? nombre;
  int? edad;
  double? estatura;

  Persona(String nombre, int edad, double estatura) {
    this.nombre = nombre;
    this.edad = edad;
    this.estatura = estatura;
  }
}

void main() {
  Persona p;
  p = new Persona("Juan", 25, 1.75);
  /*   p.nombre = "Juan";
  p.edad = 25;
  p.estatura = 1.75; */

  print("Nombre: ${p.nombre}");
  print("Edad: ${p.edad}");
  print("Estatura: ${p.estatura}");
}
