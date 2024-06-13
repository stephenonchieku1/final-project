import 'package:finalproject/Appointment/appointmentdetails.dart';
import 'package:flutter/material.dart';
import 'package:finalproject/Appointment/appointmentform.dart';
import 'package:finalproject/database.dart';
import 'package:finalproject/Appointment/appointmentmodel.dart';

class AppointmentlistPage extends StatefulWidget {
  const AppointmentlistPage({super.key});

  @override
  State<AppointmentlistPage> createState() => _AppointmentlistPageState();
}

class _AppointmentlistPageState extends State<AppointmentlistPage> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class AppointmentListPage extends StatefulWidget {
  const AppointmentListPage({super.key});

  @override
  State<AppointmentListPage> createState() => _AppointmentListPageState();
}

class _AppointmentListPageState extends State<AppointmentListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Appointment List'),
      ),
      body: FutureBuilder<List<Appointment>>(
        future: DatabaseHelper.instance.appointments(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No appointments found'));
          }

          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              final appointment = snapshot.data![index];
              return Card(
                child: ListTile(
                  title: Text(appointment.title),
                  subtitle: Text(appointment.description),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.edit),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  Appointmentform(appointment: appointment),
                            ),
                          ).then((value) {
                            if (value != null) {
                              setState(() {});
                            }
                          });
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () async {
                          await DatabaseHelper.instance
                              .deleteAppointment(appointment.id!);
                          setState(() {});
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.visibility),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AppointmmentDetailPage(
                                  appointment: appointment),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const Appointmentform()),
          ).then((value) {
            if (value != null) {
              setState(() {});
            }
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
