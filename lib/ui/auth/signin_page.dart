import 'package:sugary_map/service/export/router_export.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  static const routeName = 'resetPage';

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ログイン'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 80),
              const Icon(Icons.lock_rounded, size: 100.0, color: Colors.grey),
              const SizedBox(height: 20),
              Container(
                width: 300,
                child: TextFormField(
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
                    onPressed: () {},
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
                    onPressed: () {},
                    child: const Text(
                      '店舗ユーザーでログイン',
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
            ],
          ),
        ),
      ),
    );
  }
}
