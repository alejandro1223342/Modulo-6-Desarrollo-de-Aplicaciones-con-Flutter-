class Calculadora {
  int sumar(int a, int b) {
    return a + b;
  }
}

void main() {
  Calculadora calc = Calculadora();
  int resultado = calc.sumar(5, 3);
  print('Resultado de la suma: $resultado');
}
