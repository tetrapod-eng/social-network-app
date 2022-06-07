import 'package:firebase_core/firebase_core.dart';

class FirebaseAuthInstance {

  FirebaseAuthInstance() {
    if (Firebase.apps.isNotEmpty) {
      Firebase.initializeApp();
    }
  }
}