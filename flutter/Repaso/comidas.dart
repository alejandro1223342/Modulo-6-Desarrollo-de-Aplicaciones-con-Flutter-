void main() {
  List<String> comidasFavoritas = [
    'Pizza',
    'Sushi',
    'Tacos',
    'Pasta',
    'Hamburguesa',
  ];
  print(comidasFavoritas);

  comidasFavoritas.add('Ensalada');
  print(comidasFavoritas);

  comidasFavoritas.remove('Tacos');
  print(comidasFavoritas);

  print(comidasFavoritas[2]);

  // Menu semanal: cada sublista representa un día (desayuno, almuerzo, cena)
  List<List<String>> menuSemanal = [
    [
      'Desayuno: Avena',
      'Almuerzo: Ensalada de pollo',
      'Cena: Sopa de verduras',
    ], // Lunes
    [
      'Desayuno: Tostadas',
      'Almuerzo: Pasta',
      'Cena: Pescado al horno',
    ], // Martes
    [
      'Desayuno: Yogur con fruta',
      'Almuerzo: Tacos',
      'Cena: Ensalada César',
    ], // Miércoles
    [
      'Desayuno: Huevos revueltos',
      'Almuerzo: Arroz con pollo',
      'Cena: Crema de calabaza',
    ], // Jueves
    ['Desayuno: Smoothie', 'Almuerzo: Sushi', 'Cena: Pizza casera'], // Viernes
    [
      'Desayuno: Panqueques',
      'Almuerzo: Hamburguesa',
      'Cena: Ensalada de quinoa',
    ], // Sábado
    [
      'Desayuno: Fruta y frutos secos',
      'Almuerzo: Asado',
      'Cena: Ensalada ligera',
    ], // Domingo
  ];

  print(menuSemanal[1][1]); // Almuerzo del jueves

  menuSemanal[4][2] = 'Cena: Pollo a la plancha';

  List<String> dias = [
    'Lunes',
    'Martes',
    'Miércoles',
    'Jueves',
    'Viernes',
    'Sábado',
    'Domingo',
  ];

  for (int i = 0; i < menuSemanal.length; i++) {
    print('--- ${dias[i]} ---');
    for (String comida in menuSemanal[i]) {
      print(comida);
    }
  }
}
