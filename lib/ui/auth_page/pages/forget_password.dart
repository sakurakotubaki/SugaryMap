import 'package:sugary_map/service/export/global_export.dart';


class ForgetPassword extends ConsumerWidget {
  const ForgetPassword({super.key});

  static const routeName = 'forgetPassword';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('パスワードのリセット'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.lock_reset, size: 100.0, color: Colors.grey),
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
            SizedBox(
              width: 300,
              height: 40,
              child: OutlinedButton(
                  onPressed: () {},
                  child: const Text(
                    'パスワードをリセット',
                    style: TextStyle(color: Colors.black),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}