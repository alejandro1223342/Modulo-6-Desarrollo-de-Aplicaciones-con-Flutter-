import 'package:flutter_test/flutter_test.dart';
import 'package:lista_cliente/databaseHelper.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'package:sqflite/sqflite.dart';
import 'package:lista_cliente/product.dart';

void main() {
  setUpAll(() {
    sqfliteFfiInit();
    databaseFactory = databaseFactoryFfi;
  });

  test('Insert product', () async {
    final db = await DatabaseHelper.instance.database;
    await db.delete('products'); // limpia la tabla

    final product = Product(
      id: 1,
      name: 'Test Product',
      price: 9.99,
      description: 'This is a test product',
      correo: 'test@example.com',
    );

    await DatabaseHelper.instance.insertProduct(product);

    final products = await DatabaseHelper.instance.getProducts();

    for (var p in products) {
      print('Inserted Product: ${p.id}, ${p.name}, Price: ${p.price}, ${p.description}');
    }
  });

  test('Update product', () async {
    final product = Product(
      id: 1,
      name: 'Updated Product',
      price: 19.99,
      description: 'This is an updated test product',
      correo: 'updated@example.com',
    );

    await DatabaseHelper.instance.updateProduct(product);

    final products = await DatabaseHelper.instance.getProducts();

    for (var p in products) {
      print('After Update: ${p.id}, ${p.name}, Price: ${p.price}, ${p.description}');
    }
  });

  test('Delete product', () async {
    // borra el id 1
    await DatabaseHelper.instance.deleteProduct(1);

    final products = await DatabaseHelper.instance.getProducts();

    for (var p in products) {
      print('After Delete: ${p.id}, ${p.name}, Price: ${p.price}, ${p.description}');
    }

    // si quieres ver que quedó vacío:
    print('Total products after delete: ${products.length}');
  });
}
