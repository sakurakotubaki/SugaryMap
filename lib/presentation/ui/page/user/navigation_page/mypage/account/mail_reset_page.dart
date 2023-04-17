import 'package:sugary_map/application/auth_provider/email_reset/reset_email.dart';
import 'package:sugary_map/presentation/export/global_export.dart';
import 'package:sugary_map/presentation/state/auth_controller.dart';
import 'package:sugary_map/presentation/ui/component/auth/custom_form_field.dart';

class UserEmailUpdate extends ConsumerWidget {
  const UserEmailUpdate({Key? key}) : super(key: key);

  static const routeName = 'userEmailUpdate';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final email = ref.watch(emailProvider);
    final emailUpdate = ref.read(resetEmailProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('メールアドレスの変更'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.mail_lock, size: 100.0, color: Colors.grey),
            const SizedBox(height: 20),
            CustomAuthForm(controller: email, labelText: 'メールアドレスを入力'),
            const SizedBox(height: 20),
            SizedBox(
              width: 300,
              height: 40,
              child: ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.black87),
                  onPressed: () async {
                    try {
                      await emailUpdate.emailUpdate(email.text);
                    } catch (e) {
                      _showErrorSnackbar(context, e.toString());
                    }
                  },
                  child: const Text(
                    'メールアドレスを変更',
                  )),
            ),
          ],
        ),
      ),
    );
  }

  // スナックバーを表示するメソッド
  void _showErrorSnackbar(BuildContext context, String message) {
    final snackBar = SnackBar(
      content: Text(message),
      duration: const Duration(seconds: 3),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
