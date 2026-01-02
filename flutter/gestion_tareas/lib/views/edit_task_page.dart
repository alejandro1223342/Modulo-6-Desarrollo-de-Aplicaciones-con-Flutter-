import 'package:flutter/material.dart';
import 'package:gestion_tareas/models/task.dart';
import 'package:gestion_tareas/services/database_helper.dart';

class EditTaskPage extends StatefulWidget {
  final Task task;
  const EditTaskPage({super.key, required this.task});

  @override
  State<EditTaskPage> createState() => _EditTaskPageState();
}

class _EditTaskPageState extends State<EditTaskPage> {
  late TextEditingController titleController;
  late TextEditingController descriptionController;
  late TextEditingController expirationDateController;
  late String estado;

  DateTime? selectedDate;

  @override
  void initState() {
    super.initState();
    titleController = TextEditingController(text: widget.task.titulo);
    descriptionController = TextEditingController(
      text: widget.task.descripcion,
    );
    selectedDate = DateTime.fromMillisecondsSinceEpoch(
      widget.task.fechaVencimiento,
    );
    expirationDateController = TextEditingController(
      text: "${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}",
    );
    estado = widget.task.estado;
  }

  @override
  void dispose() {
    titleController.dispose();
    descriptionController.dispose();
    expirationDateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Edit Task')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: const InputDecoration(labelText: 'Title'),
            ),
            TextField(
              controller: descriptionController,
              decoration: const InputDecoration(labelText: 'Description'),
            ),
            TextField(
              controller: expirationDateController,
              readOnly: true,
              decoration: const InputDecoration(
                labelText: 'Expiration Date',
                suffixIcon: Icon(Icons.calendar_today),
              ),
              onTap: () async {
                final DateTime? pickedDate = await showDatePicker(
                  context: context,
                  initialDate: selectedDate ?? DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2100),
                );

                if (pickedDate != null) {
                  setState(() {
                    selectedDate = pickedDate;
                    expirationDateController.text =
                        "${pickedDate.day}/${pickedDate.month}/${pickedDate.year}";
                  });
                }
              },
            ),
            DropdownButton<String>(
              value: estado,
              items: <String>['Pendiente', 'Completado'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (newValue) {
                setState(() {
                  estado = newValue!;
                });
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                final updated = Task(
                  id: widget.task.id,
                  titulo: titleController.text,
                  descripcion: descriptionController.text,
                  fechaVencimiento:
                      selectedDate?.millisecondsSinceEpoch ??
                      widget.task.fechaVencimiento,
                  estado: estado,
                );
                await DatabaseHelper().updateTask(updated);
                Navigator.pop(context, true);
              },
              child: const Text('Save Changes'),
            ),
          ],
        ),
      ),
    );
  }
}
