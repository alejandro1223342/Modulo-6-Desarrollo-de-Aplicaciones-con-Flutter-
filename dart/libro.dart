class Libro {
  String ISBN;
  String titulo;
  int? numeroPaginas;
  String? descripcion;

  Libro(this.ISBN, this.titulo, int? numeroPaginas, String? descripcion) {
    this.numeroPaginas = numeroPaginas;
    this.descripcion = descripcion;
  }
}

void main() {
  Libro libro1 = Libro("978-3-16-148410-0", "Aprendiendo Dart", 250, "Un libro para aprender Dart desde cero.");
  print("ISBN: ${libro1.ISBN}");
  print("Título: ${libro1.titulo}");
  print("Número de Páginas: ${libro1.numeroPaginas}");
  print("Descripción: ${libro1.descripcion}");

  Libro libro2 = Libro("978-1-23-456789-0", "Dart Avanzado", null, null);
  print("ISBN: ${libro2.ISBN}");
  print("Título: ${libro2.titulo}");
  print("Número de Páginas: ${libro2.numeroPaginas}");
  print("Descripción: ${libro2.descripcion}");
}
