import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AccountDeletionClass {
  final auth = FirebaseAuth.instance;
  final db = FirebaseFirestore.instance;
  final deletedAt = Timestamp.fromDate(DateTime.now());

  Future<void> deleteAccount() async {
    try {
      final uid = auth.currentUser?.uid;

      Map<String, dynamic> data = {
        'uid': uid,
        'deletedAt': deletedAt,
      };

      await db.collection('deleted_users').add(data);
      await auth.signOut();
    } catch (e) {
      throw e.toString();
    }
  }
}
