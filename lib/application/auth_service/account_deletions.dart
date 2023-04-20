import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';

class AccountDeletionClass {
  final auth = FirebaseAuth.instance;
  final db = FirebaseFirestore.instance;
  final storage = FirebaseStorage.instance;
  final deletedAt = Timestamp.fromDate(DateTime.now());

  Future<void> deleteAccount() async {
    try {
      final uid = auth.currentUser?.uid;
      const uploadName = 'image.png';

      Map<String, dynamic> data = {
        'uid': uid,
        'deletedAt': deletedAt,
      };

      /// [Cloud Functionsのトリガーを実行する削除フラグをつける]
      await db.collection('deleted_users').doc(uid).set(data);

      /// [FirebaseStorageの画像を削除する]
      await storage.ref().child('image/$uid/$uploadName').delete();

      /// [削除フラグと画像の削除を実行したらログアウトする]
      await auth.signOut();
    } catch (e) {
      throw e.toString();
    }
  }
}
