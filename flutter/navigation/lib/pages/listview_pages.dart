import 'package:flutter/material.dart';

class ListviewPage extends StatelessWidget {
  const ListviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Listview Basico'),
        leading: IconButton(
          icon: const Icon(Icons.add, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        children: const [
          ListTile(
            leading: Icon(Icons.access_alarm, color: Colors.blue),
            title: Text('Elemento1'),
            subtitle: Text('Subtitulo de Elemento1'),
          ),
        ],
      ),
    );
  }
}
