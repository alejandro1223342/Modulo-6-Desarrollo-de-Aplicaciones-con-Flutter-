import 'animal.dart';

class Gato extends Animal {
  //Soobreescritura de metodos
  @override //Alerta la sobreescritura si el metodo existe o no existe
  void dormir() {
    print("GATO DURMIENDO");
  }
}

void main() {
  Gato miGato = Gato();
  miGato.dormir();
}
