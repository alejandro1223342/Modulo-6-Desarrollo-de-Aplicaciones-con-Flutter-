import 'package:flutter/material.dart';
import 'package:lista_clientes/pages/client_pages.dart';

class ClientlistPage extends StatelessWidget {
  final List<Client> clients = [
    Client(name: 'Alice', email: 'alice@example.com', phone: '1234567891'),
    Client(name: 'Bob', email: 'bob@example.com', phone: '1234567891'),
    Client(name: 'Charlie', email: 'charlie@example.com', phone: '1234567891'),
    Client(name: 'Diana', email: 'diana@example.com', phone: '1234567891'),
    Client(name: 'Ethan', email: 'ethan@example.com', phone: '1234567891'),
    Client(name: 'Fiona', email: 'fiona@example.com', phone: '1234567891'),
    Client(name: 'George', email: 'george@example.com', phone: '1234567891'),
    Client(name: 'Hannah', email: 'hannah@example.com', phone: '1234567891'),
    Client(name: 'Ian', email: 'ian@example.com', phone: '1234567891'),
    Client(name: 'Jane', email: 'jane@example.com', phone: '1234567891'),
  ];

  ClientlistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView.builder(
        itemCount: clients.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(clients[index].name),
            subtitle: Text(clients[index].email),
            trailing: Text(clients[index].phone),
          );
        },
      ),
    );
  }
}
