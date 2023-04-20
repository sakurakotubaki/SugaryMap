import 'package:sugary_map/presentation/export/global_export.dart';
import 'package:sugary_map/presentation/ui/component/global/custom_divider.dart';
import 'package:sugary_map/presentation/ui/page/user/navigation_page/mypage/account/create_user.dart';
import 'package:sugary_map/presentation/ui/page/user/navigation_page/mypage/account/delete_account_page.dart';
import 'package:sugary_map/presentation/ui/page/user/navigation_page/mypage/account/mail_reset_page.dart';
import 'package:sugary_map/presentation/ui/page/user/navigation_page/mypage/account/password_reset_page.dart';

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
        title: const Text('アカウント設定'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              // ignore: sized_box_for_whitespace
              Container(
                height: 800,
                child: ListView(
                  children: [
                    const SizedBox(height: 30),
                    Container(
                      // 左右外側に空白を作る.
                      margin: EdgeInsets.symmetric(horizontal: 20.0),
                      // ignore: prefer_const_constructors
                      child: Text(
                          "メールアドレスの変更には、ユーザーが最近ログインしている必要があります。一度ログアウトして、再ログインしてください。",
                          style: TextStyle(fontSize: 15)),
                    ),
                    GestureDetector(
                      onTap: () {
                        GoRouter.of(context).goNamed(UserEmailUpdate.routeName);
                      },
                      child: const ListTile(
                        trailing: Icon(Icons.arrow_forward_ios),
                        title: Text('メールアドレスを変更する'),
                      ),
                    ),
                    const CustomDivider(),
                    GestureDetector(
                      onTap: () {
                        GoRouter.of(context)
                            .goNamed(UserPasswordUpdate.routeName);
                      },
                      child: const ListTile(
                        trailing: Icon(Icons.arrow_forward_ios),
                        title: Text('パスワードを変更する'),
                      ),
                    ),
                    const CustomDivider(),
                    GestureDetector(
                      onTap: () {
                        GoRouter.of(context).goNamed(CreateUser.routeName);
                      },
                      child: const ListTile(
                        trailing: Icon(Icons.arrow_forward_ios),
                        title: Text('プロフィールを作成'),
                      ),
                    ),
                    const CustomDivider(),
                    GestureDetector(
                      onTap: () {},
                      child: const ListTile(
                        trailing: Icon(Icons.arrow_forward_ios),
                        title: Text('お支払い方法'),
                      ),
                    ),
                    const CustomDivider(),
                    GestureDetector(
                      onTap: () {
                        GoRouter.of(context)
                            .goNamed(DeleteAccountPage.rootName);
                      },
                      child: const ListTile(
                        trailing: Icon(Icons.arrow_forward_ios),
                        title: Text('退会する'),
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
