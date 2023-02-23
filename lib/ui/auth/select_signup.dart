import 'package:sugary_map/service/export/global_export.dart';
import 'package:sugary_map/ui/auth/shop_signup_page.dart';
import 'package:sugary_map/ui/auth/user_signup_page.dart';

class SelectSignUp extends StatefulWidget {
  const SelectSignUp({Key? key}) : super(key: key);

  static const routeName = 'signUp';

  @override
  State<SelectSignUp> createState() => _SelectSignUpState();
}

class _SelectSignUpState extends State<SelectSignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('新規登録'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          OutlinedButton(
              onPressed: () {
                context.goNamed(UserSignupPage.routeName);
              },
              child: const Text(
                '一般ユーザーとして登録',
                style: TextStyle(color: Colors.black),
              )),
          const SizedBox(height: 20),
          OutlinedButton(
              onPressed: () {
                context.goNamed(ShopSignupPage.routeName);
              },
              child: const Text(
                '店舗ユーザーとして登録',
                style: TextStyle(color: Colors.black),
              ))
        ],
      )),
    );
  }
}
