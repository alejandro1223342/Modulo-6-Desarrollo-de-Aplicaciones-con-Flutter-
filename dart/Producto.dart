class Producto {
  String codigo = '';
  String nombre = '';
  String? descripcion;
  bool activo = true;
  double precio = 0.0;
  int? stock;
}

void main() {
  // p1 → usar new y tipo Producto
  Producto p1 = new Producto();
  p1.codigo = 'P001';
  p1.nombre = 'Anillo';
  p1.descripcion = 'Anillo de plata 925';
  p1.precio = 15.0;
  p1.stock = 10;

  print(
    'p1: ${p1.codigo}, ${p1.nombre}, ${p1.descripcion}, ${p1.activo}, ${p1.precio}, ${p1.stock}',
  );

  // p2 → NO usar new y tipo Producto
  Producto p2 = Producto();
  p2.codigo = 'P002';
  p2.nombre = 'Collar';
  p2.descripcion = 'Collar de plata 925';
  p2.precio = 25.0;
  p2.stock = 5;

  print(
    'p2: ${p2.codigo}, ${p2.nombre}, ${p2.descripcion}, ${p2.activo}, ${p2.precio}, ${p2.stock}',
  );

  // p3 → NO usar new y usar final
  final Producto p3 = Producto();
  p3.codigo = 'P003';
  p3.nombre = 'Pulsera';
  p3.descripcion = 'Pulsera de plata 925';
  p3.precio = 18.0;
  p3.stock = 8;

  print(
    'p3: ${p3.codigo}, ${p3.nombre}, ${p3.descripcion}, ${p3.activo}, ${p3.precio}, ${p3.stock}',
  );
}
