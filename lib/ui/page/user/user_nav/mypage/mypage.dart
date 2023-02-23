import 'package:sugary_map/service/export/global_export.dart';
import 'package:sugary_map/ui/auth/signin_page.dart';

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    // TODO(kenta-wakasa): 同じことを何回も書かないような工夫をしよう
    const divider = Divider(
      thickness: 2,
      indent: 20,
      endIndent: 20,
      color: Colors.black12,
    );
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                GoRouter.of(context).go('/mypage/user_notification');
              },
              icon: const Icon(Icons.notifications))
        ],
        title: const Text('マイページ'),
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
                      const SizedBox(height: 20),
                      Row(
                        children: const [
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
                      GoRouter.of(context).go('/mypage/order_history');
                    },
                    child: const ListTile(
                      trailing: Icon(Icons.arrow_forward_ios),
                      title: Text('注文履歴'),
                    ),
                  ),
                  const Divider(
                    thickness: 2,
                    indent: 20,
                    endIndent: 20,
                    color: Colors.black12,
                  ),
                  GestureDetector(
                    onTap: () {
                      GoRouter.of(context).go('/mypage/bookmark');
                    },
                    child: const ListTile(
                      trailing: Icon(Icons.arrow_forward_ios),
                      title: Text('お気に入り'),
                    ),
                  ),
                  divider,
                  GestureDetector(
                    onTap: () {
                      GoRouter.of(context).go('/mypage/manual');
                    },
                    child: const ListTile(
                      trailing: Icon(Icons.arrow_forward_ios),
                      title: Text('使い方'),
                    ),
                  ),
                  divider,
                  GestureDetector(
                    onTap: () {
                      GoRouter.of(context).go('/mypage/account');
                    },
                    child: const ListTile(
                      trailing: Icon(Icons.arrow_forward_ios),
                      title: Text('アカウント設定'),
                    ),
                  ),
                  divider,
                  GestureDetector(
                    onTap: () {
                      print('アカウント設定');
                    },
                    child: const ListTile(
                      trailing: Icon(Icons.arrow_forward_ios),
                      title: Text('プライバシーポリシー'),
                    ),
                  ),
                  divider,
                  GestureDetector(
                    onTap: () {
                      GoRouter.of(context).go('/mypage/terms');
                    },
                    child: const ListTile(
                      trailing: Icon(Icons.arrow_forward_ios),
                      title: Text('利用規約'),
                    ),
                  ),
                  divider,
                  GestureDetector(
                    onTap: () {
                      GoRouter.of(context).go('/mypage/inquiry');
                    },
                    child: const ListTile(
                      trailing: Icon(Icons.arrow_forward_ios),
                      title: Text('お問い合わせ'),
                    ),
                  ),
                  divider,
                  GestureDetector(
                    onTap: () {
                      context.goNamed(SignInPage.routeName);
                    },
                    child: const ListTile(
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
