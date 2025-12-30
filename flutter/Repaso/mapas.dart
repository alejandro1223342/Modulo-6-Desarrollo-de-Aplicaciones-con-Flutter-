void main() {
  Map<String, int> poblacion = {
    'Bogotá': 8_000_000,
    'Lima': 9_000_000,
    'Santiago': 7_000_000,
  };

  print(poblacion);
  print(poblacion.keys);
  print(poblacion.values);

  print(poblacion.containsKey('Lima'));
  poblacion['Montevideo'] = 3_000_000;
  print(poblacion);
}
