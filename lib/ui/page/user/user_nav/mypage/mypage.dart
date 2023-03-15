import 'package:sugary_map/constant/privacy_const.dart';
import 'package:sugary_map/service/export/global_export.dart';
import 'package:sugary_map/service/export/user_nabbar_export.dart';
import 'package:sugary_map/ui/auth_page/pages/signin_page.dart';
import 'package:sugary_map/ui/component/global/custom_divider.dart';
import 'package:sugary_map/ui/page/shop/shop_nav/settings/shop_account_page.dart';
import 'package:sugary_map/ui/page/user/user_nav/mypage/bookmark_page.dart';
import 'package:sugary_map/ui/page/user/user_nav/mypage/inquiry.dart';
import 'package:sugary_map/ui/page/user/user_nav/mypage/manual_page.dart';
import 'package:sugary_map/ui/page/user/user_nav/mypage/order_page.dart';
import 'package:sugary_map/ui/page/user/user_nav/mypage/user_notification.dart';
import 'package:sugary_map/ui/page/user/user_nav/mypage/user_terms.dart';
import 'package:url_launcher/url_launcher.dart';

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  static const routeName = 'myPage';

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                GoRouter.of(context).goNamed(UserNotification.routeName);
              },
              icon: const Icon(Icons.notifications))
        ],
        title: Text('マイページ'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, bottom: 20),
              child: Row(
                children: [
                  Container(
                    clipBehavior: Clip.antiAlias,
                    width: 80,
                    height: 80,
                    decoration: const BoxDecoration(
                      // BoxShapeをcircleにしているので丸型になってほしい
                      shape: BoxShape.circle,
                      color: Colors.blue,
                    ),
                    // 正方形の画像を表示する
                    // Containerは丸型なので丸くなってほしい
                    child: Image.network(
                      'https://pbs.twimg.com/media/FPf418SaUAA0bbN?format=jpg&name=900x900',
                    ),
                  ),
                  const SizedBox(width: 20),
                  Column(
                    children: [
                      const Text('こんぶさん'),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Text('称号'),
                          SizedBox(width: 20),
                          Text('甘党'),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  GestureDetector(
                    onTap: () {
                      GoRouter.of(context).goNamed(OrderHistory.routeName);
                    },
                    child: ListTile(
                      trailing: Icon(Icons.arrow_forward_ios),
                      title: Text('注文履歴'),
                    ),
                  ),
                  CustomDivider(),
                  GestureDetector(
                    onTap: () {
                      GoRouter.of(context).goNamed(BookmarkPage.routeName);
                    },
                    child: ListTile(
                      trailing: Icon(Icons.arrow_forward_ios),
                      title: Text('お気に入り'),
                    ),
                  ),
                  CustomDivider(),
                  GestureDetector(
                    onTap: () {
                      GoRouter.of(context).goNamed(ManualPage.routeName);
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
                          .goNamed(UserAccountSettings.routeName);
                    },
                    child: ListTile(
                      trailing: Icon(Icons.arrow_forward_ios),
                      title: Text('アカウント設定'),
                    ),
                  ),
                  CustomDivider(),
                  GestureDetector(
                    onTap: () {
                      launchUrl(Uri.parse(privacyUrl));
                    },
                    child: ListTile(
                      trailing: Icon(Icons.arrow_forward_ios),
                      title: Text('プライバシーポリシー'),
                    ),
                  ),
                  CustomDivider(),
                  GestureDetector(
                    onTap: () {
                      launchUrl(Uri.parse(termsUrl));
                    },
                    child: ListTile(
                      trailing: Icon(Icons.arrow_forward_ios),
                      title: Text('利用規約'),
                    ),
                  ),
                  CustomDivider(),
                  GestureDetector(
                    onTap: () {
                      GoRouter.of(context).goNamed(UserInquiry.routeName);
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
    );
  }
}
