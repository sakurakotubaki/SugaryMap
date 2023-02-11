import 'package:sugary_map/service/export/global_export.dart';
import 'package:sugary_map/theme/appbar_theme.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: MyAppBar.appBar.appColor,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Text('設定'),
            TextButton(
              onPressed: () {
                // BottomNavigationBar内のページで、
                // 詳細ページへ画面遷移するときは、以下のコードを書く.
                GoRouter.of(context).go('/a/details');
              },
              child: const Text('View A details'),
            ),
          ],
        ),
      ),
    );
  }
}
