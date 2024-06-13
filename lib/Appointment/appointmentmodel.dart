class Appointment {
  final int? id;
  final String title;
  final String description;
  final DateTime date;

  Appointment({this.id, required this.title, required this.description, required this.date});

  // Convert an Appointment object into a Map object
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'date': date.toIso8601String(),
    };
  }

  // Extract an Appointment object from a Map object
  factory Appointment.fromMap(Map<String, dynamic> map) {
    return Appointment(
      id: map['id'],
      title: map['title'],
      description: map['description'],
      date: DateTime.parse(map['date']),
    );
  }
}
