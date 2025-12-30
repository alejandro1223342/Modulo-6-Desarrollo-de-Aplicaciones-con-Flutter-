import 'package:flutter/material.dart';
//import 'package:navigation/pages/customers_page.dart';
//import 'package:navigation/pages/products_page.dart';
import 'package:navigation/pages/routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          MaterialButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.products);
              /* final route = MaterialPageRoute(
                builder: (ctx) {
                  return const ProductsPage();
                },
              );
              Navigator.push(context, route); */
            },
            color: Colors.blue,
            child: const Text(
              'PAGINA DE PRODUCTOS',
              style: TextStyle(color: Colors.white),
            ),
          ),

          MaterialButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.customers);
             /*  final route = MaterialPageRoute(
                builder: (ctx) {
                  return const CustomersPage();
                },
              );
              Navigator.push(context, route); */
            },
            color: Colors.blue,
            child: const Text(
              'IR A CLIENTES',
              style: TextStyle(color: Colors.white),
            ),
          ),

          MaterialButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.listview);
             /*  final route = MaterialPageRoute(
                builder: (ctx) {
                  return const CustomersPage();
                },
              );
              Navigator.push(context, route); */
            },
            color: Colors.blue,
            child: const Text(
              'IR A LISTVIEW',
              style: TextStyle(color: Colors.white),
            ),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.productList);
             /*  final route = MaterialPageRoute(
                builder: (ctx) {
                  return const CustomersPage();
                },
              );
              Navigator.push(context, route); */
            },
            color: Colors.blue,
            child: const Text(
              'IR A PRODUCT LIST',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
