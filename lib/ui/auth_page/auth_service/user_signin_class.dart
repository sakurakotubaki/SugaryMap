// ignore_for_file: no_leading_underscores_for_local_identifiers, unused_local_variable, use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:sugary_map/service/export/global_export.dart';

final firebaseAuthProvider = Provider<FirebaseAuth>((ref) {
  return FirebaseAuth.instance;
});

final userSignInClassServiceProvider = StateProvider<UserSignInClass>((ref) {
  return UserSignInClass(ref);
});

class UserSignInClass {
  Ref ref;
  UserSignInClass(this.ref);

  Future<void> userSignIn(
      String _email, String _password, BuildContext context) async {
    try {
      if(_email.isEmpty) {
        throw('メールアドレスが正しく入力されていません');
      }

      if(_password.isEmpty) {
        throw('パスワードが正しく入力されていません');
      }
      ref
          .read(firebaseAuthProvider)
          .signInWithEmailAndPassword(email: _email, password: _password);
    } catch (e) {
      showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        // throwのエラーメッセージがダイアログで表示される.
                        title: Text(e.toString()),
                        actions: <Widget>[
                          ElevatedButton(
                            child: const Text('OK'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
    }
  }
}
