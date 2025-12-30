import 'Empleado.dart';
import 'Taller.dart';
import 'Vehiculo.dart';

void main() {
  // 1. Crear un Empleado con nombre "Carlos"
  Empleado empleado = Empleado('Carlos');

  // 2. Cambiar el mensaje de bienvenida del taller
  empleado.actualizarMensaje('Bienvenidos al Taller Alejoss');

  // 3. Crear dos vehículos con placas diferentes
  Vehiculo v1 = Vehiculo('ABC-123', 'Auto rojo');
  Vehiculo v2 = Vehiculo('XYZ-789', 'Camioneta azul');

  // 4. Registrar diagnóstico en cada uno
  v1.Registro('Cambio de aceite');
  v2.Registro('Revisión de frenos');

  // 6. Mostrar resumen
  v1.resumen();
  v2.resumen();

  // 7. Mostrar total de vehículos reparados
  print('Total de vehículos reparados: ${Taller.totalReparaciones}');
}
