import 'package:flutter/material.dart';

class CounterPages extends StatefulWidget {
  const CounterPages({super.key});

  @override
  State<CounterPages> createState() => CounterPagesState();
}

class CounterPagesState extends State<CounterPages> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter++;
          });
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Contador'),
      ),
      body: Center(child: Text('$counter', style: TextStyle(fontSize: 30))),
    );
  }
}
