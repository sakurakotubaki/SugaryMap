// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:sugary_map/service/export/global_export.dart';

import 'firebase_auth_provider.dart';

final passwordResetClassProvider = Provider<PasswordResetClass>((ref) {
  return PasswordResetClass(ref);
});

class PasswordResetClass {
  Ref ref;
  PasswordResetClass(this.ref);

  Future<void> resetPassword(String _email, BuildContext context) async {
    try {
      if (_email.isEmpty) {
        throw ('メールアドレスが入力されていません!');
      }
      await ref
          .read(firebaseAuthProvider)
          .sendPasswordResetEmail(email: _email);
    } catch (e) {
      errorDialog(context, e);
    }
  }

  Future<void> errorDialog(BuildContext context, Object e) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
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
        });
  }
}
