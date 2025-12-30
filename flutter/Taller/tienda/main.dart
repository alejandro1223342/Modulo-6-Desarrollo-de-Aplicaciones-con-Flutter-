import 'Producto.dart';
import 'Tienda.dart';

void main() {
  // 1. Crear dos productos distintos
  Producto p1 = Producto('P001');
  Producto p2 = Producto('P002');

  // 2. Registrar venta en cada uno
  p1.registrarVenta('Camisa deportiva', 25.50, 'Talla M');
  p2.registrarVenta('Zapatos casuales', 60.00, 10.5);

  // 3. Cambiar el anuncio de la tienda
  Tienda.cambiarAnuncio('Descuentos especiales solo hoy');

  // 4. Mostrar resumen de ambos productos
  p1.resumen();
  p2.resumen();

  // 5. Mostrar total de productos vendidos
  print('Total de productos vendidos: ${Tienda.obtenerVentas()}');
}
