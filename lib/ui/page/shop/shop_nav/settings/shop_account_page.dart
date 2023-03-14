import 'package:sugary_map/service/export/global_export.dart';
import 'package:sugary_map/service/export/shop_nabbar_export.dart';
import 'package:sugary_map/ui/page/shop/shop_nav/settings/accoutn/shop_mail_reset_page.dart';
import 'package:sugary_map/ui/page/shop/shop_nav/settings/accoutn/shop_password_reset_page.dart';

class ShopAccountSettings extends StatefulWidget {
  const ShopAccountSettings({Key? key}) : super(key: key);

  static const routeName = 'shopAccountSettings';

  @override
  State<ShopAccountSettings> createState() => _ShopAccountSettingsState();
}

class _ShopAccountSettingsState extends State<ShopAccountSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('アカウント設定'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                height: 800,
                child: ListView(
                  children: [
                    SizedBox(height: 30),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20.0),
                      width: 350,
                      child: Text(
                          "メールアドレスの変更には、ユーザーが最近ログインしている必要があります。一度ログアウトして、再ログインしてください。",
                          style: TextStyle(fontSize: 15)),
                    ),
                    SizedBox(height: 20),
                    GestureDetector(
                      onTap: () {
                        GoRouter.of(context).goNamed(ShopMailUpdate.routeName);
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
                        GoRouter.of(context)
                            .goNamed(ShopPasswordUpdate.routeName);
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
                        GoRouter.of(context).goNamed(UpdateShop.routeName);
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
      ),
    );
  }
}
