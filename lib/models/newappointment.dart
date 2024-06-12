class Appointment {
  final int? id;
  final int userId;
  final String title;
  final String? description;
  final String? date;

  Appointment({
    this.id,
    required this.userId,
    required this.title,
    this.description,
    this.date,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'userId': userId,
      'title': title,
      'description': description,
      'date': date,
    };
  }

  factory Appointment.fromMap(Map<String, dynamic> map) {
    return Appointment(
      id: map['id'],
      userId: map['userId'],
      title: map['title'],
      description: map['description'],
      date: map['date'],
    );
  }
}
