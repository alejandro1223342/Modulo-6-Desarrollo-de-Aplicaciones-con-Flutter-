import 'package:biblioteca/models/book.dart';
import 'package:biblioteca/services/database_helper.dart';
import 'package:flutter/material.dart';

class AddBookPage extends StatefulWidget {
  const AddBookPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _AddBookPageState();
  }
}

class _AddBookPageState extends State<AddBookPage> {
  final TitleController = TextEditingController();
  final AuthorController = TextEditingController();
  final noteController = TextEditingController();
  String status = 'Pendiente';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add New Book')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: TitleController,
              decoration: const InputDecoration(labelText: 'Title'),
            ),
            TextField(
              controller: AuthorController,
              decoration: const InputDecoration(labelText: 'Author'),
            ),
            DropdownButton<String>(
              value: status,
              items: <String>['Pendiente', 'Leído'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (newValue) {
                setState(() {
                  status = newValue!;
                });
              },
            ),
            TextField(
              controller: noteController,
              decoration: const InputDecoration(labelText: 'Note'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                final book = Book(
                  id: '',
                  title: TitleController.text,
                  author: AuthorController.text,
                  status: status,
                  note: noteController.text,
                );
                await DatabaseHelper().insertBook(book);
                Navigator.pop(context, true);
              },
              child: const Text('Save Book'),
            ),
          ],
        ),
      ),
    );
  }
}
