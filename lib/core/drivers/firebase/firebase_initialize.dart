import 'package:flutter_base_app/core/drivers/firebase/auth/firebase_auth_instance.dart';
import 'package:flutter_base_app/core/memory_storage.dart';

class FirebaseInitialize {

  static void register() {

    MemoryStorage().singleton<FirebaseAuthInstance>(FirebaseAuthInstance());
  }
}