// ignore_for_file: no_leading_underscores_for_local_identifiers, unused_local_variable, prefer_single_quotes, sized_box_for_whitespace, prefer_const_constructors

import 'package:sugary_map/service/export/global_export.dart';
import 'package:sugary_map/ui/auth_page/auth_service/user_reset_password.dart';
import 'package:sugary_map/ui/auth_page/auth_validator/auth_controller.dart';

class ForgetPassword extends ConsumerWidget {
  const ForgetPassword({super.key});

  static const routeName = 'forgetPassword';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _email = ref.watch(emailProvider);
    final resetPassword = ref.read(passwordResetClassProvider.notifier).state;

    return Scaffold(
      appBar: AppBar(
        title: const Text('パスワードのリセット'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.lock_reset, size: 100.0, color: Colors.grey),
            const SizedBox(height: 20),
            Container(
              width: 300,
              child: TextFormField(
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 20),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey)),
                    labelText: "メールアドレスを入力"),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 300,
              height: 40,
              child: OutlinedButton(
                  onPressed: () async {
                    resetPassword.resetPassword(_email.text, context);
                  },
                  child: const Text(
                    'パスワードをリセット',
                    style: TextStyle(color: Colors.black),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
