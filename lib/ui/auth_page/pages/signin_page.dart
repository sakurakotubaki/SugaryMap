// ignore_for_file: prefer_single_quotes, unused_import, unnecessary_import, no_leading_underscores_for_local_identifiers, unused_local_variable

import 'dart:developer';

import 'package:sugary_map/service/export/global_export.dart';
import 'package:sugary_map/service/export/router_export.dart';
import 'package:sugary_map/ui/auth_page/auth_service/user_signin_class.dart';
import 'package:sugary_map/ui/auth_page/auth_validator/form_validator_provider.dart';
import 'package:sugary_map/ui/auth_page/auth_validator/signIn_validator.dart';
import 'package:sugary_map/ui/auth_page/pages/forget_password.dart';
import 'package:sugary_map/ui/auth_page/pages/select_signup.dart';

class SignInPage extends ConsumerWidget {
  const SignInPage({super.key});

  static const routeName = 'signInPage';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final globalKey = ref.watch(signInFormKeyProvider);
    final _email = ref.watch(emailProvider);
    final _password = ref.watch(passwordProvider);
    final userSignIn = ref.read(userSignInClassServiceProvider.notifier).state;

    return Scaffold(
      appBar: AppBar(
        title: const Text('ログイン'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Form(
            key: globalKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 80),
                const Icon(Icons.lock_rounded, size: 100.0, color: Colors.grey),
                const SizedBox(height: 20),
                SizedBox(
                  width: 300,
                  child: TextFormField(
                    controller: _email,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'メールアドレスを入力してください';
                      }
                      if (!value.contains('@')) {
                        return '無効なメールアドレスです';
                      }
                      return null;
                    },
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
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'パスワードを入力してください';
                      }
                      if (value.length < 6) {
                        return 'パスワードは6文字以上で入力してください';
                      }
                    },
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
                      onPressed: () {
                        if (globalKey.currentState!.validate()) {
                          log(_email.text);
                          log(_password.text);
                        }
                      },
                      child: const Text(
                        '一般ユーザーでログイン',
                        style: TextStyle(color: Colors.black),
                      )),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: 300,
                  height: 40,
                  child: OutlinedButton(
                      onPressed: () {
                        if (globalKey.currentState!.validate()) {
                          userSignIn.userSignIn(
                              _email.text, _password.text, context);
                        }
                      },
                      child: const Text(
                        '店舗ユーザーでログイン',
                        style: TextStyle(color: Colors.black),
                      )),
                ),
                const SizedBox(height: 20),
                TextButton(
                    onPressed: () {
                      context.goNamed(SelectSignUp.routeName);
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
      ),
    );
  }
}
