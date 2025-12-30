class Tienda {
  static const String nombre = 'Tienda Alejoss';
  static String anuncio = "Bienvenidos a la tienda de confianza";
  static int productosVendidos = 0;

  static cambiarAnuncio(String nuevoAnuncio) {
    anuncio = nuevoAnuncio;
    return 'Anuncio actualizado: $nuevoAnuncio';
  }

  static registrarVenta() {
    productosVendidos++;
  }
  static obtenerVentas() {
    return productosVendidos;
  }
}