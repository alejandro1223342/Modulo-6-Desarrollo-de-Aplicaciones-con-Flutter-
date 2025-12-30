//Future, async - await

void main() async {
  print("Estoy en mi casa");
  pedirPizza();
  print("Estoy en la calle");
  
}

Future<String> prepararPizza() {
  // Simula una tarea asincrona como una llamada a una API o base de datos
  return Future.delayed(Duration(seconds: 5), () => 'Pizza lista');
}

void pedirPizza() async {
  print('Pedido de pizza iniciado');

  final mensaje = await prepararPizza();
  print(mensaje);

  print('Pedido de pizza finalizado');
}
