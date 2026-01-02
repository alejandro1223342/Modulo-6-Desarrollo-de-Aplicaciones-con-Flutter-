import 'package:flutter/material.dart';
import 'package:gestion_tareas/models/task.dart';
import 'package:gestion_tareas/services/database_helper.dart';

class AddTaskPage extends StatefulWidget {
  const AddTaskPage({super.key});

  @override
  State<AddTaskPage> createState() => _AddTaskPageState();
}

class _AddTaskPageState extends State<AddTaskPage> {
  final TitleController = TextEditingController();
  final DescriptionController = TextEditingController();
  final ExpirationDateController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  String estado = 'Pendiente';

  DateTime? selectedDate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add New Task')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: TitleController,
                decoration: const InputDecoration(labelText: 'Title'),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'El título es obligatorio';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: DescriptionController,
                decoration: const InputDecoration(labelText: 'Description'),
                maxLines: 3,
              ),

              // Selector de fecha
              TextFormField(
                controller: ExpirationDateController,
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
                    initialDate: DateTime.now(),
                    firstDate: DateTime.now(),
                    lastDate: DateTime(2100),
                  );

                  if (pickedDate != null) {
                    setState(() {
                      selectedDate = pickedDate;
                      // mostrar en formato YYYY-MM-DD
                      ExpirationDateController.text =
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
                onPressed: () async{
                  if (!_formKey.currentState!.validate()) return;

                  final task = Task(
                    id: DateTime.now().microsecondsSinceEpoch,
                    titulo: TitleController.text.trim(),
                    descripcion: DescriptionController.text,
                    fechaVencimiento: selectedDate?.millisecondsSinceEpoch ?? DateTime.now().millisecondsSinceEpoch,
                    estado: estado,
                  );
                  await DatabaseHelper().insertTask(task);
                  Navigator.pop(context,true);
                },
                child: const Text('Save Task'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
