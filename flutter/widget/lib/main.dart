import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () => {print("Hola")},
          backgroundColor: Colors.red,
          child: const Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        drawer: const Drawer(
          child: Column(
            children: [
              SizedBox(height: 50),
              Text('Opcion 1'),
              Text('Opcion 2'),
              Text('Opcion 3'),
            ],
          ),
        ),
        body: const Center(child: Text('Hola Alejo')),
        appBar: AppBar.new(
          backgroundColor: Colors.red,
          title: const Center(child: Text('Mi primera app')),
          titleTextStyle: const TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
