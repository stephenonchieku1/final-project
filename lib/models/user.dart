
class User {
  final int? id;
  final String email;i have  final String name;
  

  User({this.id, required this.email, required this.name});

  // Convert a User object into a Map object
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'email': email,
      'name': name,
      
    };
  }

  // Extract a User object from a Map object
  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'],
      email: map['email'],
      name: map['name'],
     
    );
  }
}
