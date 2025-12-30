void main() {
  Map<String, int> jugadores = {'Messi': 10, 'Ronaldo': 7, 'Neymar': 11};
  print(jugadores);

  jugadores['Mbappe'] = 7;
  jugadores['Neymar'] = 10;
  jugadores['Suarez'] = 9;
  jugadores['Ronaldo'] = 7;

  print(jugadores);

  String nombreBuscado = 'Messi';
  print('Puntaje de $nombreBuscado: ${jugadores[nombreBuscado]}');

  jugadores['Neymar'] = 12; 
  print('Se actualizó el puntaje de Neymar.');

  jugadores['Mbappe'] = 9;
  print('Se agregó a Mbappe con puntaje 9.');

  jugadores.remove('Ronaldo');
  print('Se eliminó a Ronaldo del mapa.');
  
  print(
    'Mapa actualizado: $jugadores',
  ); 
}
