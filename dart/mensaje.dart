class Mensaje {
  void saludar(String nombre, String apellido, String apodo) {
    print("Hola $nombre $apellido, tu apodo es $apodo");
  }

  void bienvenida(String nombre, String apellido, String? apodo) {
    print("Hola $nombre $apellido, tu apodo es $apodo");
  }

  //Parametros nombrados
  void despedirse({String nombre = "", String apellido = "", String? apodo}) {
    print("Hola $nombre $apellido, tu apodo es $apodo");
  }

  void animar({required nombre, required apellido, String? apodo}) {
    print("Hola $nombre $apellido, tu apodo es $apodo");
  }
}

void main() {
  final mensaje = Mensaje();
  mensaje.saludar("Carlos", "Pérez", "Carlitos");

  mensaje.bienvenida("Ana", "Gómez", null);
  mensaje.bienvenida("Ana", "Gómez", "el pepe");
  mensaje.despedirse(apodo: "Crack");
  mensaje.despedirse(nombre: "PEPE");
  mensaje.animar(nombre: "Alejandro", apellido: "Muñoz");
}
