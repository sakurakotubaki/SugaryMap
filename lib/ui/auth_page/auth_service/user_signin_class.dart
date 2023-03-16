// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:firebase_auth/firebase_auth.dart';
import 'package:sugary_map/service/export/global_export.dart';

final firebaseAuthProvider = Provider<FirebaseAuth>((ref) {
  return FirebaseAuth.instance;
});

final authServiceProvider = StateProvider<UserSignInClass>((ref) {
  return UserSignInClass(ref);
});

class UserSignInClass {
  Ref ref;
  UserSignInClass(this.ref);

  Future<void> userSignIn(String _email, String _password, BuildContext context) async {
    try {
    await ref
        .read(firebaseAuthProvider)
        .signInWithEmailAndPassword(email: _email, password: _password);
    } on FirebaseAuthException catch (e) {
if (e.code == 'invalid-email') {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('メールアドレスのフォーマットが正しくありません'),
          ),
        );
      } else if (e.code == 'user-disabled') {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('現在指定したメールアドレスは使用できません'),
          ),
        );
      } else if (e.code == 'user-not-found') {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('指定したメールアドレスは登録されていません'),
          ),
        );
      } else if (e.code == 'wrong-password') {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('パスワードが間違っています'),
          ),
        );
      }
    }
  }
}
