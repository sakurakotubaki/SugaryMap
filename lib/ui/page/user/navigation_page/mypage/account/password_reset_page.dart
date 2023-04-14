import 'package:sugary_map/service/export/global_export.dart';
import 'package:sugary_map/ui/component/auth/custom_form_field.dart';

class UserPasswordUpdate extends StatefulWidget {
  UserPasswordUpdate({Key? key}) : super(key: key);

  static const routeName = 'userPasswordUpdate';

  @override
  State<UserPasswordUpdate> createState() => _UserPasswordUpdateState();
}

class _UserPasswordUpdateState extends State<UserPasswordUpdate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('パスワードの変更'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.lock_reset, size: 100.0, color: Colors.grey),
            SizedBox(height: 20),
            CustomAuthForm(labelText: 'メールアドレスを入力'),
            SizedBox(height: 20),
            SizedBox(
              width: 300,
              height: 40,
              child: OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    'パスワードを変更',
                    style: TextStyle(color: Colors.black),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
