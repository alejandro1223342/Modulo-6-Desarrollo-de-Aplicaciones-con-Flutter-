class Miproducto {
  String codigo;
  double precio;
  String? descripcion;

  Miproducto(this.codigo, this.precio, String? descripcion) {
    this.descripcion = descripcion;
  }

  Miproducto.generico() : codigo = "0000", precio = 0.0;
}
