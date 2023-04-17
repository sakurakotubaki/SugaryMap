import 'package:sugary_map/application/auth_provider/sign_in/sign_in.dart';
import 'package:sugary_map/presentation/export/global_export.dart';
import 'package:sugary_map/presentation/router/auth_provider.dart';
import 'package:sugary_map/presentation/state/auth_controller.dart';
import 'package:sugary_map/presentation/ui/page/auth_page/forget_password.dart';
import 'package:sugary_map/presentation/ui/page/auth_page/signup_page.dart';

class NotificationPage extends ConsumerWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authStateAsync = ref.watch(authProvider);
    final email = ref.watch(emailProvider);
    final password = ref.watch(passwordProvider);
    final signInService = ref.read(signInProvider);

    return authStateAsync.when(
        loading: () => const CircularProgressIndicator(),
        error: (err, stack) => Text('Error: $err'),
        data: (user) {
          // nullじゃなかったら、ログインしているWidgetを表示
          return user != null
              ? Scaffold(
                  body: Center(child: Text('通知はありません')),
                )
              :
              // nullだったらログインしていないWidgetを表示する
              Scaffold(
                  backgroundColor: Colors.white,
                  appBar: AppBar(),
                  body: SingleChildScrollView(
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(height: 150),
                          const Icon(Icons.lock_rounded,
                              size: 100.0, color: Colors.grey),
                          const SizedBox(height: 20),
                          SizedBox(
                            width: 300,
                            child: TextFormField(
                              controller: email,
                              decoration: InputDecoration(
                                  contentPadding:
                                      const EdgeInsets.only(left: 20),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide:
                                          const BorderSide(color: Colors.grey)),
                                  labelText: "メールアドレスを入力"),
                            ),
                          ),
                          const SizedBox(height: 20),
                          SizedBox(
                            width: 300,
                            child: TextFormField(
                              controller: password,
                              decoration: InputDecoration(
                                  contentPadding:
                                      const EdgeInsets.only(left: 20),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide:
                                          const BorderSide(color: Colors.grey)),
                                  labelText: "パスワードを入力"),
                            ),
                          ),
                          const SizedBox(height: 20),
                          SizedBox(
                            width: 300,
                            height: 40,
                            child: OutlinedButton(
                                onPressed: () async {
                                  try {
                                    await signInService.signIn(
                                        email.text, password.text);
                                    return;
                                  } catch (e) {
                                    _showErrorSnackbar(context, e.toString());
                                  }
                                },
                                child: const Text(
                                  'ログイン',
                                  style: TextStyle(color: Colors.black),
                                )),
                          ),
                          const SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ),
                );
        });
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
// class NotificationPage extends StatefulWidget {
//   const NotificationPage({Key? key}) : super(key: key);

//   static const routeName = '/notificationPage';

//   @override
//   State<NotificationPage> createState() => _NotificationPageState();
// }

// class _NotificationPageState extends State<NotificationPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           children: <Widget>[

//           ],
//         ),
//       ),
//     );
//   }
// }
