// ignore_for_file: unused_local_variable, no_leading_underscores_for_local_identifiers, unused_import, prefer_single_quotes, prefer_const_constructors

import 'package:sugary_map/presentation/export/global_export.dart';
import 'package:sugary_map/presentation/ui/page/auth_page/auth_service/user_signup_class.dart';
import 'package:sugary_map/presentation/state/auth_controller.dart';
import 'package:sugary_map/presentation/ui/page/user/profile/create_user.dart';

class SignUpPage extends ConsumerWidget {
  const SignUpPage({super.key});

  static const routeName = 'signUpPage';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _email = ref.watch(emailProvider);
    final _password = ref.watch(passwordProvider);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.lock_person_rounded,
                size: 100.0, color: Colors.grey),
            const SizedBox(height: 20),
            Container(
              width: 300,
              child: TextFormField(
                controller: _email,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 20),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey)),
                    labelText: "メールアドレスを入力"),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: 300,
              child: TextFormField(
                controller: _password,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 20),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey)),
                    labelText: "パスワードを入力"),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 300,
              height: 40,
              child: OutlinedButton(
                  onPressed: () async {
                  },
                  child: const Text(
                    'ユーザー新規登録',
                    style: TextStyle(color: Colors.black),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
