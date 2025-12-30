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
        drawer: Drawer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.info),
                  SizedBox(width: 8),
                  Text('Información del Drawer'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.shopping_cart),
                  SizedBox(width: 8),
                  Text('Compras'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.inventory),
                  SizedBox(width: 8),
                  Text('Productos'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Icon(Icons.account_balance),
                  SizedBox(width: 8),
                  Text('Banco'),
                ],
              ),
            ],
          ),
        ),

        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.red,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.abc) , label: 'ABC'),
            BottomNavigationBarItem(icon: Icon(Icons.access_alarm), label: 'Alarm'),
            BottomNavigationBarItem(icon: Icon(Icons.accessibility), label: 'Accessibility'),
            BottomNavigationBarItem(icon: Icon(Icons.account_balance), label: 'Account Balance'),
          ],
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('Test');
          },
          backgroundColor: Colors.grey,
          child: const Icon(Icons.add),
        ),

        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

        body: const Center(child: Text('Hola Alejo')),
        appBar: AppBar.new(
          backgroundColor: Colors.grey,
          title: const Center(child: Text('APP TEST')),
          titleTextStyle: const TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}
