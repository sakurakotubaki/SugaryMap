// ignore_for_file: unused_import

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:sugary_map/presentation/export/global_export.dart';

final fireStoreProvider = Provider<FirebaseFirestore>((ref) {
  return FirebaseFirestore.instance;
});

final firebaseAuthProvider = Provider<FirebaseAuth>((ref) {
  return FirebaseAuth.instance;
});

final userDataServiceClassProvider = StateProvider<UserDataServiceClass>((ref) {
  return UserDataServiceClass(ref);
});

class UserDataServiceClass {
  Ref ref;
  UserDataServiceClass(this.ref);

  Future<void> newUserProfile(String nameController, String phoneController) async {
    final uid = ref.read(firebaseAuthProvider).currentUser?.uid;
    await ref.read(fireStoreProvider).collection('user').doc(uid).set({
      'createdAt': Timestamp.fromDate(DateTime.now()),
      'name': nameController,
      'phoneNumber': int.parse(phoneController),
    });
  }
}
