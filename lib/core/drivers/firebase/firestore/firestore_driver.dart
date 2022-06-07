import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreDriver {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // ドキュメント作成
  void create(String documentName, Map<String, dynamic> source) {

    _firestore.collection("user_profile")
        .doc(documentName)
        .set(source);
  }
}