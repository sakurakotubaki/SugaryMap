// ignore_for_file: prefer_const_constructors_in_immutables, sized_box_for_whitespace, prefer_const_constructors, prefer_single_quotes

import 'package:sugary_map/service/export/global_export.dart';
import 'package:sugary_map/ui/auth_page/auth_validator/form_validator_provider.dart';
import 'package:sugary_map/ui/page/shop/profile/create_shop.dart';

class ShopSignUpPage extends ConsumerWidget {
  const ShopSignUpPage({super.key});

  static const routeName = 'shopSignUpPage';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final globalKey = ref.watch(shopSignUpFormKeyProvider);
    final _email = ref.watch(emailProvider);
    final _password = ref.watch(passwordProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('店舗ユーザー新規登録'),
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
                      context.goNamed(CreateShop.routeName);
                    },
                    child: const Text(
                      '店舗ユーザー新規登録',
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