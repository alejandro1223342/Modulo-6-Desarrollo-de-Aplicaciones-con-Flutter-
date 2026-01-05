import 'package:biblioteca/models/book.dart';
import 'package:biblioteca/services/database_helper.dart';
import 'package:flutter/material.dart';

class EditBookPage extends StatefulWidget {
  final Book book;
  const EditBookPage({super.key, required this.book});

  @override
  State<EditBookPage> createState() => _EditBookPageState();
}

class _EditBookPageState extends State<EditBookPage> {
  late TextEditingController titleController;
  late TextEditingController authorController;
  late TextEditingController noteController;
  late String status;

  @override
  void initState() {
    super.initState();
    titleController = TextEditingController(text: widget.book.title);
    authorController = TextEditingController(text: widget.book.author);
    noteController = TextEditingController(text: widget.book.note);
    status = widget.book.status;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Edit Book')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: const InputDecoration(labelText: 'Title'),
            ),
            TextField(
              controller: authorController,
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
                  id: widget.book.id,
                  title: titleController.text,
                  author: authorController.text,
                  status: status,
                  note: noteController.text,
                );
                await DatabaseHelper().updateBook(book);
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
