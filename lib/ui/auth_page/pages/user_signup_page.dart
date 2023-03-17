// ignore_for_file: unused_local_variable, no_leading_underscores_for_local_identifiers

import 'package:sugary_map/service/export/global_export.dart';
import 'package:sugary_map/ui/auth_page/auth_service/user_signup_class.dart';
import 'package:sugary_map/ui/auth_page/auth_validator/form_validator_provider.dart';
import 'package:sugary_map/ui/page/user/profile/create_user.dart';

class UserSignUpPage extends ConsumerWidget {
  const UserSignUpPage({super.key});

  static const routeName = 'userSignUpPage';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final globalKey = ref.watch(userSignUpFormKeyProvider);
    final _email = ref.watch(emailProvider);
    final _password = ref.watch(passwordProvider);
    final userSignUp = ref.read(userSignUpClassProvider.notifier).state;

    return Scaffold(
      appBar: AppBar(
        title: const Text('一般ユーザー新規登録'),
      ),
      body: Center(
        child: Form(
          key: globalKey,
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
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'パスワードを入力してください';
                    }
                    if (value.length < 6) {
                      return 'パスワードは6文字以上で入力してください';
                    }
                  },
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
                    onPressed: () {
                      // context.goNamed(CreateUser.routeName);
                      userSignUp.userSignUp(
                          _email.text, _password.text, context);
                    },
                    child: const Text(
                      '一般ユーザー新規登録',
                      style: TextStyle(color: Colors.black),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
