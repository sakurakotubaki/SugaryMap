import 'package:sugary_map/service/export/global_export.dart';
import 'package:sugary_map/ui/component/auth/custom_form_field.dart';

class UserEmailUpdate extends StatefulWidget {
  UserEmailUpdate({Key? key}) : super(key: key);

  static const routeName = 'userEmailUpdate';

  @override
  State<UserEmailUpdate> createState() => _UserEmailUpdateState();
}

class _UserEmailUpdateState extends State<UserEmailUpdate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('メールアドレスの変更'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.mail_lock, size: 100.0, color: Colors.grey),
            SizedBox(height: 20),
            CustomAuthForm(labelText: 'メールアドレスを入力'),
            SizedBox(height: 20),
            SizedBox(
              width: 300,
              height: 40,
              child: ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.black87),
                  onPressed: () {},
                  child: const Text(
                    'メールアドレスを変更',
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
