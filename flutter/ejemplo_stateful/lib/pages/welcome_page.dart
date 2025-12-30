import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return WelcomePageState();
  }
}

class WelcomePageState extends State {
  String? nombre;
  String? apellido;
  String saludo = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Welcome Page')),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            const Text('Ingrese su nombre:'),
            TextField(
              onChanged: (text) {
                nombre = text;
              },
            ),
            const Text('Ingrese su apellido:'),
            TextField(
              onChanged: (text) {
                apellido = text;
              },
            ),
            MaterialButton(
              color: Colors.blue,
              onPressed: () {
                saludo = 'Hola $nombre $apellido';
                setState(() {});
              },
              child: const Text('SALUDAR'),
            ),

            Text(saludo),
          ],
        ),
      ),
    );
  }
}
