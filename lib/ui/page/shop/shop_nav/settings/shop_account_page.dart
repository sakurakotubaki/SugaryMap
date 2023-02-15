import 'package:sugary_map/service/export/global_export.dart';
import 'package:sugary_map/theme/appbar_theme.dart';

class ShopAccountSettings extends StatefulWidget {
  const ShopAccountSettings({Key? key}) : super(key: key);

  @override
  State<ShopAccountSettings> createState() => _ShopAccountSettingsState();
}

class _ShopAccountSettingsState extends State<ShopAccountSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('アカウント設定'),
        backgroundColor: MyAppBar.appBar.appColor,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView(
                children: [
                  SizedBox(height: 30),
                  Container(
                    alignment: Alignment.topLeft,
                    width: 250,
                    child: Text("""
                    メールアドレスの変更には、
                    ユーザーが最近ログインして
                    いる必要があります。
                    一度ログアウトして、再ログイン
                    してください。
                    """, style: TextStyle(fontSize: 15)),
                  ),
                  GestureDetector(
                    onTap: () {
                      GoRouter.of(context).go('/setting/shop_account/shop_mail');
                    },
                    child: ListTile(
                      trailing: Icon(Icons.arrow_forward_ios),
                      title: Text('メールアドレスを変更する'),
                    ),
                  ),
                  Divider(
                    thickness: 2,
                    indent: 20,
                    endIndent: 20,
                    color: Colors.black12,
                  ),
                  GestureDetector(
                    onTap: () {
                      GoRouter.of(context).go('/setting/shop_account/shop_password');
                    },
                    child: ListTile(
                      trailing: Icon(Icons.arrow_forward_ios),
                      title: Text('パスワードを変更する'),
                    ),
                  ),
                  Divider(
                    thickness: 2,
                    indent: 20,
                    endIndent: 20,
                    color: Colors.black12,
                  ),
                  GestureDetector(
                    onTap: () {
                      GoRouter.of(context).go('/setting/shop_account/update_shop');
                    },
                    child: ListTile(
                      trailing: Icon(Icons.arrow_forward_ios),
                      title: Text('プロフィールを編集'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}