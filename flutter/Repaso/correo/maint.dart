import 'servidor_correo.dart';

void main() {
  final servidorCorreo = ServidorCorreo();
  servidorCorreo.conectar();
  servidorCorreo.enviarCorreo('usuario@example.com', 'Hola, mundo!');
  servidorCorreo.desconectar();

  final servidorCorreo2 = ServidorCorreo();
  servidorCorreo2.enviarCorreo('otro_usuario@example.com', 'Otro mensaje');
  print(servidorCorreo == servidorCorreo2);
  servidorCorreo.desconectar();
}
