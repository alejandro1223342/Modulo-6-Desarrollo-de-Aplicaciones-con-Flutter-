class Rectangulo {
  int base = 0;
  int altura = 0;

  /*  Rectangulo(base, altura) {
    this.base = base;
    this.altura = altura;
  } */

  //Forma abreviada del constructor
  Rectangulo(this.base, this.altura);

  int calcularArea() {
    return base * altura;
  }

  int calcularPerimetro() {
    return 2 * (base + altura);
  }
}

void main() {
  Rectangulo r = Rectangulo(10, 5);
  /* r.base = 10;
  r.altura = 5; */

  int area = r.calcularArea();
  int perimetro = r.calcularPerimetro();

  print('Área: $area');
  print('Perímetro: $perimetro');
}
