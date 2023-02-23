import 'package:sugary_map/service/export/global_export.dart';
import 'package:sugary_map/ui/page/user/user_nav/mypage/account/mail_reset_page.dart';
import 'package:sugary_map/ui/page/user/user_nav/mypage/account/password_reset_page.dart';
import 'package:sugary_map/ui/page/user/user_nav/mypage/account/update_user.dart';

class UserAccountSettings extends StatefulWidget {
  const UserAccountSettings({Key? key}) : super(key: key);

  static const routeName = 'userAccountSettings';

  @override
  State<UserAccountSettings> createState() => _UserAccountSettingsState();
}

class _UserAccountSettingsState extends State<UserAccountSettings> {
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
                      // 左右外側に空白を作る.
                      margin: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text(
                          "メールアドレスの変更には、ユーザーが最近ログインしている必要があります。一度ログアウトして、再ログインしてください。",
                          style: TextStyle(fontSize: 15)),
                    ),
                    GestureDetector(
                      onTap: () {
                        GoRouter.of(context).goNamed(UserEmailUpdate.routeName);
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
                        GoRouter.of(context).goNamed(UserPasswordUpdate.routeName);
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
                        GoRouter.of(context).goNamed(UpdateUser.routeName);
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
