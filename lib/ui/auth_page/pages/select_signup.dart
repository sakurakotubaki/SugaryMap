// ignore_for_file: unused_local_variable, no_leading_underscores_for_local_identifiers
import 'package:sugary_map/service/export/global_export.dart';
import 'package:sugary_map/service/export/router_export.dart';
import 'package:sugary_map/ui/auth_page/auth_validator/formstate_provider.dart';

class SelectSignUp extends ConsumerWidget {
  const SelectSignUp({super.key});

  static const routeName = 'selectSignUp';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
                context.goNamed(UserSignUpPage.routeName);
              },
              child: const Text(
                '一般ユーザーとして登録',
                style: TextStyle(color: Colors.black),
              )),
          const SizedBox(height: 20),
          OutlinedButton(
              onPressed: () {
                context.goNamed(ShopSignUpPage.routeName);
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
