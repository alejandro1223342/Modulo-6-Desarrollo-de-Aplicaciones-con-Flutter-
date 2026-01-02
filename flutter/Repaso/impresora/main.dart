import 'impresora.dart';

void main() {
  final impresora = ImpresoraCentral();
  impresora.conectar();
  impresora.imprimir('Hola, mundo!');

  final impresora2 = ImpresoraCentral();
  impresora2.imprimir('Otra impresión desde la misma instancia.');

  print(impresora == impresora2);

  print(impresora2.conectada);
}