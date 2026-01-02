class ServidorCorreo {
  static final ServidorCorreo _instance = ServidorCorreo._internal();
  factory ServidorCorreo() => _instance;
  ServidorCorreo._internal();
  bool _conectada = false;
  bool get conectada => _conectada;

  void conectar() {
    if (!_conectada) {
      _conectada = true;
      print('Servidor de correo conectado.');
    } else {
      print('El servidor de correo ya está conectado.');
    }
  }

  void enviarCorreo(String destinatario, String asunto) {
    if (_conectada) {
      print('Enviando correo a $destinatario: $asunto');
    } else {
      print('Error: El servidor de correo no está conectado.');
    }
  }

  void desconectar() {
    if (_conectada) {
      _conectada = false;
      print('Servidor de correo desconectado.');
    } else {
      print('El servidor de correo ya está desconectado.');
    }
  }
}
