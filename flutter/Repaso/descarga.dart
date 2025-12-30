// 2) VIDA REAL: Descargas un archivo y mientras tanto sigues trabajando
Future<void> ejemploDescargaArchivo() async {
  print('Iniciando descarga...');
  Future<String> descarga = descargarArchivo(); // se inicia y no bloquea

  print('Mientras espero: abro el cuaderno');
  await Future.delayed(Duration(seconds: 1));
  print('Mientras espero: hago una nota rápida ');
  await Future.delayed(Duration(seconds: 1));
  print('Mientras espero: organizo mis carpetas');

  String resultado = await descarga; // espero a que termine
  print(resultado);
}

Future<String> descargarArchivo() async {
  await Future.delayed(Duration(seconds: 4)); // simula descarga
  return 'Descarga completada: archivo.pdf';
}

void main() async {
  print('\n=== EJEMPLO 2: Descargar un archivo ===');
  await ejemploDescargaArchivo();
}
