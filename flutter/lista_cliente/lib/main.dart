import 'package:flutter/material.dart';
import 'package:lista_cliente/product_form.dart';
import 'package:lista_cliente/product_list.dart';
import 'databaseHelper.dart';

void main() {
  var dbHelper1 = DatabaseHelper.instance;
  var dbHelper2 = DatabaseHelper.instance;

  if (dbHelper1 == dbHelper2) {
    print('Both instances are the same (singleton works)');
  } else {
    print('Instances are different (singleton failed)');
  }

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const ProductList(),
      routes: {
        '/addProduct': (context) => const ProductForm(),
      },
    );
  }
}
