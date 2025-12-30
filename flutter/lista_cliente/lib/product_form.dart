import 'package:flutter/material.dart';
import 'package:lista_cliente/databaseHelper.dart';
import 'package:lista_cliente/product.dart';

class ProductForm extends StatefulWidget {
  const ProductForm({super.key});

  @override
  State<StatefulWidget> createState() {
    return ProductFormState();
  }
}

class ProductFormState extends State<ProductForm> {
  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController();
    final priceController = TextEditingController();
    final descriptionController = TextEditingController();
    final correoController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Product'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: nameController,
              decoration: const InputDecoration(labelText: 'Product Name'),
            ),
            TextField(
              controller: priceController,
              decoration: const InputDecoration(labelText: 'Price'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: descriptionController,
              decoration: const InputDecoration(labelText: 'Description'),
            ),
            TextField(
              controller: correoController,
              decoration: const InputDecoration(labelText: 'Correo'),
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final product = Product(
                  id: DateTime.now().millisecondsSinceEpoch,
                  name: nameController.text,
                  price: double.parse(priceController.text),
                  description: descriptionController.text,
                  correo: correoController.text,
                );
                DatabaseHelper.instance.insertProduct(product);
                print('Producto ingresado en base de datos: ${product.name}, \$${product.price}, ${product.description}, ${product.correo}');
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Product Saved')),
                );
                Navigator.pop(context, true);
              },
              child: const Text('Save Product'),
            ),
          ],
        ),
      ),
    );
  }
  
}