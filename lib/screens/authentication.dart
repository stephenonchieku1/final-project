import 'package:firebase_auth/firebase_auth.dart';
import 'package:logger/logger.dart';

class Authservice {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final Logger _logger = Logger();
  //sign  in anonymously
  Future signInAnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User? user = result.user;
      return user;
    } catch (e) {
      _logger.e(e.toString());
      return null;
    }
  }

  //sign in with email&password

  //register with email and password
}
