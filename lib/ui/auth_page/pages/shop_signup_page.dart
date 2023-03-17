// ignore_for_file: prefer_const_constructors_in_immutables, sized_box_for_whitespace, prefer_const_constructors, prefer_single_quotes

import 'package:sugary_map/service/export/global_export.dart';
import 'package:sugary_map/ui/auth_page/auth_service/shop_signup_class.dart';
import 'package:sugary_map/ui/auth_page/auth_validator/auth_controller.dart';
import 'package:sugary_map/ui/page/shop/profile/create_shop.dart';

class ShopSignUpPage extends ConsumerWidget {
  const ShopSignUpPage({super.key});

  static const routeName = 'shopSignUpPage';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _email = ref.watch(emailProvider);
    final _password = ref.watch(passwordProvider);
    final shopShignUp = ref.read(shopSignUpClassProvider.notifier).state;

    return Scaffold(
      appBar: AppBar(
        title: const Text('店舗ユーザー新規登録'),
      ),
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
                  onPressed: () {
                    // context.goNamed(CreateShop.routeName);
                    shopShignUp.shopSignUp(
                        _email.text, _password.text, context);
                  },
                  child: const Text(
                    '店舗ユーザー新規登録',
                    style: TextStyle(color: Colors.black),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
