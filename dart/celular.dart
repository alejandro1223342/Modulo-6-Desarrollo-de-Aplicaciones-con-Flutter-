import 'dispositivo_electronico.dart';

class Celular extends DispositivoElectronico {
  Celular(super.codigo, super.marca);
  @override
  void imprimir() {
    print("Codigo: $codigo, Marca: $marca");
  }

  @override
  registrarInventario() {
    print("registrando inventario: Codigo: $codigo, Marca: $marca ");
  }
}

void main() {
  Celular celular = Celular(1111, "samsung");
  celular.imprimir();
  celular.registrarInventario();
}
