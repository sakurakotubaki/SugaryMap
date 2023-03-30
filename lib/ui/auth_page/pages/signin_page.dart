// ignore_for_file: prefer_single_quotes, unused_import, unnecessary_import, no_leading_underscores_for_local_identifiers, unused_local_variable

import 'dart:developer';

import 'package:sugary_map/service/export/global_export.dart';
import 'package:sugary_map/service/export/router_export.dart';
import 'package:sugary_map/ui/auth_page/auth_service/user_signin_class.dart';
import 'package:sugary_map/ui/auth_page/auth_validator/auth_controller.dart';
import 'package:sugary_map/ui/auth_page/auth_validator/signIn_validator.dart';
import 'package:sugary_map/ui/auth_page/pages/forget_password.dart';

class SignInPage extends ConsumerWidget {
  const SignInPage({super.key});

  static const routeName = '/signInPage';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _email = ref.watch(emailProvider);
    final _password = ref.watch(passwordProvider);
    final userSignIn = ref.read(userSignInClassServiceProvider);

    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 150),
              const Icon(Icons.lock_rounded, size: 100.0, color: Colors.grey),
              const SizedBox(height: 20),
              SizedBox(
                width: 300,
                child: TextFormField(
                  controller: _email,
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(left: 20),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.grey)),
                      labelText: "メールアドレスを入力"),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: 300,
                child: TextFormField(
                  controller: _password,
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(left: 20),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.grey)),
                      labelText: "パスワードを入力"),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: 300,
                height: 40,
                child: OutlinedButton(
                    onPressed: () async {
                      userSignIn.userSignIn(
                          _email.text, _password.text, context);
                    },
                    child: const Text(
                      'ログイン',
                      style: TextStyle(color: Colors.black),
                    )),
              ),
              const SizedBox(height: 20),
              TextButton(
                  onPressed: () {
                    context.goNamed(SignUpPage.routeName);
                  },
                  child: const Text('新規登録')),
              const SizedBox(height: 10),
              TextButton(
                  onPressed: () {
                    context.goNamed(ForgetPassword.routeName);
                  },
                  child: const Text('パスワードを忘れた')),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
