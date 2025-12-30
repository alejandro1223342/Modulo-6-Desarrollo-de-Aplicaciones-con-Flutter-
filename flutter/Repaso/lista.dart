void main() {
  List<String> ciudades = ['Bogotá', 'Lima', 'Santiago', 'Montevideo'];
  print(ciudades);

  ciudades.add("Buenos Aires");
  print(ciudades);

  print(ciudades[1]);
  ciudades.remove('Santiago');
  print(ciudades);

  List<List<int>> matriz = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9],
  ];

  print(matriz[0][1]);

  List<Ciudad> listaCiudades = [
    Ciudad(nombre: 'Bogotá', poblacion: 8_000_000),
    Ciudad(nombre: 'Lima', poblacion: 9_000_000),
    Ciudad(nombre: 'Santiago', poblacion: 7_000_000),
  ];
  print(listaCiudades[2].nombre);

  listaCiudades.add(Ciudad(nombre: 'Montevideo', poblacion: 3_000_000));
  for (var ciudad in listaCiudades) {
    print('Ciudad: ${ciudad.nombre}, Población: ${ciudad.poblacion}');
  }
}

class Ciudad {
  String nombre;
  int poblacion;

  Ciudad({required this.nombre, required this.poblacion});
}
