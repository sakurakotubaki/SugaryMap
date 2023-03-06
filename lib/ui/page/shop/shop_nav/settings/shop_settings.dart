import 'package:sugary_map/repository/privacy_class.dart';
import 'package:sugary_map/service/export/global_export.dart';
import 'package:sugary_map/service/export/shop_nabbar_export.dart';
import 'package:sugary_map/ui/auth/signin_page.dart';
import 'package:sugary_map/ui/component/global/custom_divider.dart';
import 'package:sugary_map/ui/page/shop/shop_nav/settings/accoutn/shop_mail_reset_page.dart';
import 'package:sugary_map/ui/page/shop/shop_nav/settings/shop_account_page.dart';
import 'package:sugary_map/ui/page/shop/shop_nav/settings/shop_inquiry.dart';
import 'package:url_launcher/url_launcher.dart';

class ShopSettingPage extends StatefulWidget {
  const ShopSettingPage({Key? key}) : super(key: key);

  static const routeName = 'shopSettingPage';

  @override
  State<ShopSettingPage> createState() => _ShopSettingPageState();
}

class _ShopSettingPageState extends State<ShopSettingPage> {
  @override
  Widget build(BuildContext context) {
    final privacyClass = PrivacyClass();

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
                        GoRouter.of(context).goNamed(ShopManualPage.routeName);
                      },
                      child: ListTile(
                        trailing: Icon(Icons.arrow_forward_ios),
                        title: Text('使い方'),
                      ),
                    ),
                    CustomDivider(),
                    GestureDetector(
                      onTap: () {
                        GoRouter.of(context)
                            .goNamed(ShopAccountSettings.routeName);
                      },
                      child: ListTile(
                        trailing: Icon(Icons.arrow_forward_ios),
                        title: Text('アカウント設定'),
                      ),
                    ),
                    CustomDivider(),
                    GestureDetector(
                      onTap: () {
                        privacyClass.showPrivacy();
                      },
                      child: ListTile(
                        trailing: Icon(Icons.arrow_forward_ios),
                        title: Text('プライバシーポリシー'),
                      ),
                    ),
                    CustomDivider(),
                    GestureDetector(
                      onTap: () {
                        privacyClass.showTerms();
                      },
                      child: ListTile(
                        trailing: Icon(Icons.arrow_forward_ios),
                        title: Text('利用規約'),
                      ),
                    ),
                    CustomDivider(),
                    GestureDetector(
                      onTap: () {
                        GoRouter.of(context).goNamed(ShopInquiry.routeName);
                      },
                      child: ListTile(
                        trailing: Icon(Icons.arrow_forward_ios),
                        title: Text('お問い合わせ'),
                      ),
                    ),
                    CustomDivider(),
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
