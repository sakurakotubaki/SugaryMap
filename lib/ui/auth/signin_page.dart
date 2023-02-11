import 'package:sugary_map/service/export/global_export.dart';
import 'package:sugary_map/service/export/router_export.dart';
import 'package:sugary_map/theme/appbar_theme.dart';
import 'package:sugary_map/ui/auth/signup_page.dart';

class SignInPage extends StatefulWidget {
  SignInPage({Key? key}) : super(key: key);

  static const routeName = 'resetPage';

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: MyAppBar.appBar.appColor,
        title: const Text('ログイン'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.lock_rounded, size: 100.0, color: Colors.grey),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50),
              child: TextFormField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 20),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey)),
                    labelText: "メールアドレスを入力"),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50),
              child: TextFormField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 20),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey)),
                    labelText: "パスワードを入力"),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: 300,
              height: 40,
              child: OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    'ログイン',
                    style: TextStyle(color: Colors.black),
                  )),
            ),
            SizedBox(height: 20),
            TextButton(
                onPressed: () {
                  context.goNamed(SignUpPage.routeName);
                },
                child: Text('新規登録')),
            SizedBox(height: 10),
            TextButton(
                onPressed: () {
                  context.goNamed(PasswordResetPage.routeName);
                },
                child: Text('パスワードを忘れた')),
          ],
        ),
      ),
    );
  }
}
