import 'package:flutter/material.dart';

class CalculatorPages extends StatefulWidget {
  const CalculatorPages({super.key});
  
  @override
  State<StatefulWidget> createState() {
    return CalculatorPagesState();
  }
}


class CalculatorPagesState extends State {

  int numero1 = 0;
  int numero2 = 0;
  String operacion = '';

  final TextEditingController numero1Controller = TextEditingController(text: '0');
  final TextEditingController numero2Controller = TextEditingController(text: '0');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Calculator Page')),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            const Text('Ingrese numero:'),
            TextField(
              controller: numero1Controller,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.right,
              onChanged: (text) {
                numero1 = text.isEmpty ? 0 : int.parse(text);
              },
            ),

            const SizedBox(height: 20),

            const Text('Ingrese numero:'),
            TextField(
              controller: numero2Controller,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.right,
              onChanged: (text) {
                numero2 = text.isEmpty ? 0 : int.parse(text);
              },
            ),
            MaterialButton(
              color: Colors.blue,
              onPressed: () {
                operacion = 'La suma es: ${numero1 + numero2}';
                setState(() {});
              },
              child: const Text('SUMAR'),
            ),

            Text(operacion),
          ],
        ),
      ),
    );
  }
}