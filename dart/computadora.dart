import 'dispositivo_electronico.dart';

class Computadora extends DispositivoElectronico {
  int capacidadDisco;
  Computadora(this.capacidadDisco, super.codigo, super.marca);

  @override
  void imprimir() {
    print("Codigo: $codigo, Marca: $marca, Capacidad Disco: $capacidadDisco");
  }

  @override
  registrarInventario() {
    print(
      "registrando inventario: Codigo: $codigo, Marca: $marca, Capacidad: $capacidadDisco ",
    );
  }
}

void main() {
  Computadora miComputadora = Computadora(1111, 100, "samsung");
  miComputadora.imprimir();

  miComputadora.registrarInventario();
}
