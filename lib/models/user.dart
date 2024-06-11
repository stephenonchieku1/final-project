
class User {
  final int? id;
  final String email;
  final String firstName;
  final String lastName;

  User({this.id, required this.email, required this.firstName, required this.lastName});

  // Convert a User object into a Map object
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'email': email,
      'first_name': firstName,
      'last_name': lastName,
    };
  }

  // Extract a User object from a Map object
  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'],
      email: map['email'],
      firstName: map['first_name'],
      lastName: map['last_name'],
    );
  }
}
