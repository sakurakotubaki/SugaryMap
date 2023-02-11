import 'package:sugary_map/service/export/global_export.dart';
import 'package:sugary_map/theme/appbar_theme.dart';
import 'package:sugary_map/ui/auth/signin_page.dart';
import 'package:sugary_map/ui/page/user/user_nav/mypage/order_page.dart';

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('マイページ'),
        backgroundColor: MyAppBar.appBar.appColor,
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
                          const Text('称号'),
                          SizedBox(width: 20),
                          const Text('甘党'),
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
                      GoRouter.of(context).go('/mypage/order');
                    },
                    child: ListTile(
                      trailing: Icon(Icons.arrow_forward_ios),
                      title: Text('注文履歴'),
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
                      GoRouter.of(context).go('/mypage/bookmark');
                    },
                    child: ListTile(
                      trailing: Icon(Icons.arrow_forward_ios),
                      title: Text('お気に入り'),
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
                      GoRouter.of(context).go('/mypage/manual');
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
                      GoRouter.of(context).go('/mypage/account');
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
                      print('アカウント設定');
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
                      GoRouter.of(context).go('/mypage/terms');
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
                      GoRouter.of(context).go('/mypage/inquiry');
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
    );
  }
}
