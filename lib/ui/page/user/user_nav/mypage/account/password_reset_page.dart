import 'package:sugary_map/service/export/global_export.dart';
import 'package:sugary_map/ui/component/auth/custom_form_field.dart';

class PasswordUpdate extends StatefulWidget {
  PasswordUpdate({Key? key}) : super(key: key);

  @override
  State<PasswordUpdate> createState() => _PasswordUpdateState();
}

class _PasswordUpdateState extends State<PasswordUpdate> {
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
