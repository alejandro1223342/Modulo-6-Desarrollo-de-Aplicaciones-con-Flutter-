class Pelicula {
  String titulo;
  int anioEstreno;

  Pelicula(this.titulo, this.anioEstreno);

  @override
  String toString() => '$titulo ($anioEstreno)';
}

void main() {

  Map<String, List<Pelicula>> catalogoStreaming = {
    'Netflix': [],
    'HBO': [],
    'Disney+': [],
  };

  catalogoStreaming['Netflix']!.addAll([
    Pelicula('El Irlandés', 2019),
    Pelicula('Roma', 2018),
  ]);

  catalogoStreaming['HBO']!.addAll([
    Pelicula('Joker', 2019),
    Pelicula('Dune', 2021),
  ]);

  catalogoStreaming['Disney+']!.addAll([
    Pelicula('Soul', 2020),
    Pelicula('Frozen II', 2019),
  ]);

  print('Películas en Netflix:');
  for (var p in catalogoStreaming['Netflix']!) {
    print('- ${p.titulo}');
  }

  catalogoStreaming['Disney+']!.add(Pelicula('Luca', 2021));
  print('\nSe agregó "Luca" a Disney+.');


  var hboList = catalogoStreaming['HBO']!;
  for (var peli in hboList) {
    if (peli.titulo == 'Dune') {
      peli.anioEstreno = 2020; 
      print('\nSe actualizó el año de "Dune" en HBO a ${peli.anioEstreno}.');
      break;
    }
  }

  catalogoStreaming['Netflix']!.removeWhere((p) => p.titulo == 'Roma');
  print('\nSe eliminó "Roma" de Netflix.');

  print('\nCatálogo completo:');
  catalogoStreaming.forEach((plataforma, listaPeliculas) {
    print('\n$plataforma:');
    for (var pel in listaPeliculas) {
      print('- ${pel.titulo} (${pel.anioEstreno})');
    }
  });
}

