// ignore_for_file: no_leading_underscores_for_local_identifiers, unused_local_variable, prefer_single_quotes, sized_box_for_whitespace, prefer_const_constructors
import 'package:sugary_map/application/auth_provider/password_reset/reset_password.dart';
import 'package:sugary_map/presentation/export/global_export.dart';
import 'package:sugary_map/presentation/state/auth_controller.dart';
import 'package:sugary_map/presentation/ui/component/auth/custom_form_field.dart';

class UserPasswordUpdate extends ConsumerWidget {
  const UserPasswordUpdate({super.key});

  static const routeName = 'userPasswordUpdate';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final email = ref.watch(emailProvider);
    final resetPassword = ref.read(resetPasswordProvider);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.lock_reset, size: 100.0, color: Colors.grey),
            const SizedBox(height: 20),
            CustomAuthForm(labelText: 'メールアドレスを入力', controller: email),
            const SizedBox(height: 20),
            SizedBox(
              width: 300,
              height: 40,
              child: ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.black87),
                  onPressed: () async {
                    try {
                      resetPassword.resetPassword(email.text);
                    } catch (e) {
                      _showErrorSnackbar(context, e.toString());
                    }
                  },
                  child: const Text('パスワードをリセット')),
            ),
          ],
        ),
      ),
    );
  }

  // スナックバーを表示するメソッド
  void _showErrorSnackbar(BuildContext context, String message) {
    final snackBar = SnackBar(
      content: Text(message),
      duration: const Duration(seconds: 3),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
