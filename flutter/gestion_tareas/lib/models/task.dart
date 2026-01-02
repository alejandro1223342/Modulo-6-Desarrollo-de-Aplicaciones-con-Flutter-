class Task {
  final int id;
  final String titulo;
  final String descripcion;
  final int fechaVencimiento;
  final String estado;

  Task({
    required this.id,
    required this.titulo,
    required this.descripcion,
    required this.fechaVencimiento,
    required this.estado,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'titulo': titulo,
      'descripcion': descripcion,
      'fechaVencimiento': fechaVencimiento,
      'estado': estado,
    };
  }
}
