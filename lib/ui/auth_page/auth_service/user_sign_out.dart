// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:firebase_auth/firebase_auth.dart';
import 'package:sugary_map/service/export/global_export.dart';

final firebaseAuthProvider = Provider<FirebaseAuth>((ref) {
  return FirebaseAuth.instance;
});

final authServiceProvider = StateProvider<UserSignOutClass>((ref) {
  return UserSignOutClass(ref);
});

class UserSignOutClass {
  Ref ref;
  UserSignOutClass(this.ref);

  Future<void> userSignOut(
      String _email, String _password, BuildContext context) async {
    await ref.read(firebaseAuthProvider).signOut();
  }
}
