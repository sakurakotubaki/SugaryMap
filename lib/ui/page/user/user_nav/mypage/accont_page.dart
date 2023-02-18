import 'package:sugary_map/service/export/global_export.dart';
import 'package:sugary_map/theme/appbar_theme.dart';

class AccontSettings extends StatefulWidget {
  const AccontSettings({Key? key}) : super(key: key);

  @override
  State<AccontSettings> createState() => _AccontSettingsState();
}

class _AccontSettingsState extends State<AccontSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('アカウント設定'),
        backgroundColor: MyAppBar.appBar.appColor,
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
                      // 左右外側に空白を作る.
                      margin: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text(
                          "メールアドレスの変更には、ユーザーが最近ログインしている必要があります。一度ログアウトして、再ログインしてください。",
                          style: TextStyle(fontSize: 15)),
                    ),
                    GestureDetector(
                      onTap: () {
                        GoRouter.of(context).go('/mypage/account/user_email');
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
                            .go('/mypage/account/user_password');
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
                        GoRouter.of(context).go('/mypage/account/update_user');
                      },
                      child: ListTile(
                        trailing: Icon(Icons.arrow_forward_ios),
                        title: Text('プロフィールを編集'),
                      ),
                    ),
                    Divider(
                      thickness: 2,
                      indent: 20,
                      endIndent: 20,
                      color: Colors.black12,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: ListTile(
                        trailing: Icon(Icons.arrow_forward_ios),
                        title: Text('お支払い方法'),
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
