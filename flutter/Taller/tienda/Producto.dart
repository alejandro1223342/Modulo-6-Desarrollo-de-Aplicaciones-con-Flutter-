import 'Tienda.dart';

class Producto {
  final String codigo;
  String descripcion = '';
  double precio = 0.0;
  dynamic observacion = 'Sin observaciones';

  Producto(this.codigo);

  void registrarVenta(String desc, double nuevoPrecio, dynamic obs) {
    descripcion = desc;
    precio = nuevoPrecio;
    observacion = obs;
    Tienda.registrarVenta();
  }

  void resumen() {
    print('--- ${Tienda.nombre} ---');
    print('Anuncio: ${Tienda.anuncio}');
    print('Código: $codigo');
    print('Descripción: $descripcion');
    print('Precio: \$${precio.toStringAsFixed(2)}');
    print('Observación: $observacion');
    print('-----------------------');
  }
}
