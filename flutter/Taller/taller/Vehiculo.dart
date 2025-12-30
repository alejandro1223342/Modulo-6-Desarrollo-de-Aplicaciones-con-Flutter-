import 'Taller.dart';

class Vehiculo {
  final String placa;
  String diagnostico = '';
  String estado = 'Pendiente';
  final String extraInfo;

  Vehiculo(this.placa, this.extraInfo);

  void Registro(String diagnostico) {
    this.diagnostico = diagnostico;
    estado = 'En reparación';
  }

  void resumen() {
    print('--- ${Taller.nombre} ---');
    print(Taller.mensajeGeneral);
    print('Placa: $placa');
    print('Diagnóstico: $diagnostico');
    print('Estado: $estado');
    print('Extra: $extraInfo');
  }
}
