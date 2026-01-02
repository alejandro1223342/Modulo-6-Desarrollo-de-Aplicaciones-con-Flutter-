class ImpresoraCentral {
  static final ImpresoraCentral _instance = ImpresoraCentral._internal();
  factory ImpresoraCentral() => _instance;
  ImpresoraCentral._internal();
  bool _conectada = false;
  bool get conectada => _conectada;

  void conectar() {
    // Lógica para conectar a la impresora central
    if (!_conectada) {
      _conectada = true;
      print('Impresora central conectada.');
    } else {
      print('La impresora central ya está conectada.');
    }
  }

  void imprimir(String contenido) {
    if (_conectada) {
      // Lógica para imprimir el contenido
      print('Imprimiendo en la impresora central: $contenido');
    } else {
      print('Error: La impresora central no está conectada.');
    }
  }
}
