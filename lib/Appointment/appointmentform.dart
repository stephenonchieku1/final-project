import 'package:flutter/material.dart';
import 'package:finalproject/database.dart';
import 'package:finalproject/Appointment/appointmentmodel.dart';

class Appointmentform extends StatefulWidget {
  const Appointmentform({super.key, this.appointment});
  final Appointment? appointment;
  @override
  State<Appointmentform> createState() => _AppointmentformState();
}

class _AppointmentformState extends State<Appointmentform> {
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  DateTime? _selectedDate;

  @override
  void initState() {
    super.initState();
    if (widget.appointment != null) {
      _titleController.text = widget.appointment!.title;
      _descriptionController.text = widget.appointment!.description;
      _selectedDate = widget.appointment!.date;
    }
  }
   @override
     void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    //_selectedDate != null  dispose();
    super.dispose();
  }

  void _submitForm( BuildContext context) {
    if (_formKey.currentState!.validate() && _selectedDate != null) {
      final newAppointment = Appointment(
        id: widget.appointment?.id,
        title: _titleController.text,
        description: _descriptionController.text,
        date: _selectedDate!,
      );

      if (widget.appointment == null) {
        DatabaseHelper.instance.insertAppointment(newAppointment);
      } else {
        DatabaseHelper.instance.updateAppointment(newAppointment);
      }

      Navigator.pop(context, true );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.appointment == null ? 'Add Appointment' : 'Edit Appointment'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _titleController,
                decoration: const InputDecoration(labelText: 'Title'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a title';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _descriptionController,
                decoration: const InputDecoration(labelText: 'Description'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a description';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: Text(_selectedDate == null
                        ? 'No date chosen!'
                        : 'Selected Date: ${_selectedDate!.toLocal()}'),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      final selectedDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2100),
                      );
                      if (selectedDate != null) {
                        setState(() {
                          _selectedDate = selectedDate;
                        });
                      }
                    },
                    child: const Text('Choose Date'),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => _submitForm(context),
                 child: Text(widget.appointment == null ? 'Create' : 'Update'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
