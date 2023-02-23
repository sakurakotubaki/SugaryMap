import 'package:sugary_map/service/export/global_export.dart';
import 'package:sugary_map/ui/auth/signin_page.dart';

class ShopSettingPage extends StatefulWidget {
  const ShopSettingPage({Key? key}) : super(key: key);

  static const routeName = 'shopSettingPage';

  @override
  State<ShopSettingPage> createState() => _ShopSettingPageState();
}

class _ShopSettingPageState extends State<ShopSettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('設定'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                height: 800,
                child: ListView(
                  children: [
                    SizedBox(height: 50),
                    GestureDetector(
                      onTap: () {
                        GoRouter.of(context).go('/setting/shop_manual');
                      },
                      child: ListTile(
                        trailing: Icon(Icons.arrow_forward_ios),
                        title: Text('使い方'),
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
                        GoRouter.of(context).go('/setting/shop_account');
                      },
                      child: ListTile(
                        trailing: Icon(Icons.arrow_forward_ios),
                        title: Text('アカウント設定'),
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
                        GoRouter.of(context).go('/setting/shop_privacy');
                      },
                      child: ListTile(
                        trailing: Icon(Icons.arrow_forward_ios),
                        title: Text('プライバシーポリシー'),
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
                        GoRouter.of(context).go('/setting/shop_terms');
                      },
                      child: ListTile(
                        trailing: Icon(Icons.arrow_forward_ios),
                        title: Text('利用規約'),
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
                        GoRouter.of(context).go('/setting/shop_inquiry');
                      },
                      child: ListTile(
                        trailing: Icon(Icons.arrow_forward_ios),
                        title: Text('お問い合わせ'),
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
                        context.goNamed(SignInPage.routeName);
                      },
                      child: ListTile(
                        trailing: Icon(Icons.arrow_forward_ios),
                        title: Text('ログアウト'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
