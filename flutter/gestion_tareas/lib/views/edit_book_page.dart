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
  final _formKey = GlobalKey<FormState>();

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
      text: "${selectedDate!.year.toString().padLeft(4, '0')}-${selectedDate!.month.toString().padLeft(2, '0')}-${selectedDate!.day.toString().padLeft(2, '0')}",
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
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: titleController,
                decoration: const InputDecoration(labelText: 'Title'),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'El título es obligatorio';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: descriptionController,
                decoration: const InputDecoration(labelText: 'Description'),
                maxLines: 3,
              ),
              TextFormField(
                controller: expirationDateController,
                readOnly: true,
                decoration: const InputDecoration(
                  labelText: 'Expiration Date',
                  suffixIcon: Icon(Icons.calendar_today),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Debe seleccionar una fecha de vencimiento';
                  }
                  return null;
                },
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
                      // mostrar en formato YYYY-MM-DD
                      expirationDateController.text =
                          "${pickedDate.year.toString().padLeft(4, '0')}-${pickedDate.month.toString().padLeft(2, '0')}-${pickedDate.day.toString().padLeft(2, '0')}";
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
                  if (!_formKey.currentState!.validate()) return;

                  final updated = Task(
                    id: widget.task.id,
                    titulo: titleController.text.trim(),
                    descripcion: descriptionController.text,
                    fechaVencimiento: selectedDate?.millisecondsSinceEpoch ?? widget.task.fechaVencimiento,
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
      ),
    );
  }
}
