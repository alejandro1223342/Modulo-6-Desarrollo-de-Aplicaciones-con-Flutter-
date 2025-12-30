void main() async {
  print('=== EJEMPLO 2: Lavadora en casa ===');
  await ejemploLavadora();
}

// VIDA REAL: La lavadora tarda, pero tú sigues haciendo otras tareas
Future<void> ejemploLavadora() async {
  print('Encendiendo la lavadora ...');
  Future<String> lavado = lavarRopa(); // inicia y no bloquea

  print('Mientras espero: barro la casa ');
  await Future.delayed(Duration(seconds: 1));
  print('Mientras espero: preparo café ');
  await Future.delayed(Duration(seconds: 1));
  print('Mientras espero: ordeno el cuarto ');

  String resultado = await lavado; // espero a que termine
  print(resultado);
}

Future<String> lavarRopa() async {
  await Future.delayed(Duration(seconds: 5)); // tiempo de lavado
  return 'Lavado terminado, ropa lista para colgar';
}
