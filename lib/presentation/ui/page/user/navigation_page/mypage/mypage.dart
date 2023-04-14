// ignore_for_file: unused_import, unnecessary_import, prefer_const_constructors, avoid_unnecessary_containers

import 'package:sugary_map/presentation/constant/privacy_const.dart';
import 'package:sugary_map/presentation/export/global_export.dart';
import 'package:sugary_map/presentation/export/user_nabbar_export.dart';
import 'package:sugary_map/presentation/router/auth_provider.dart';
import 'package:sugary_map/presentation/ui/page/auth_page/pages/signin_page.dart';
import 'package:sugary_map/presentation/ui/component/global/custom_divider.dart';
import 'package:sugary_map/presentation/ui/page/user/navigation_page/mypage/bookmark_page.dart';
import 'package:sugary_map/presentation/ui/page/user/navigation_page/mypage/inquiry.dart';
import 'package:sugary_map/presentation/ui/page/user/navigation_page/mypage/manual_page.dart';
import 'package:sugary_map/presentation/ui/page/user/navigation_page/mypage/user_notification.dart';
import 'package:sugary_map/presentation/ui/page/user/navigation_page/mypage/user_terms.dart';
import 'package:url_launcher/url_launcher.dart';

class MyPage extends ConsumerWidget {
  const MyPage({super.key});

  static const routeName = '/myPage';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ユーザーのログイン状態を監視する
    final authStateAsync = ref.watch(authProvider);

    return authStateAsync.when(
        loading: () => const CircularProgressIndicator(),
        error: (err, stack) => Text('Error: $err'),
        data: (user) {
          // nullじゃなかったら、ログインしているWidgetを表示
          return user != null
              ? Scaffold(
                  backgroundColor: Colors.white,
                  appBar: AppBar(
                    title: const Text('マイページ'),
                  ),
                  body: Center(
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 20, left: 20, bottom: 20),
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
                                    // ignore: prefer_const_literals_to_create_immutables
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

                                },
                                child: ListTile(
                                  trailing: Icon(Icons.arrow_forward_ios),
                                  title: Text('注文履歴'),
                                ),
                              ),
                              CustomDivider(),
                              GestureDetector(
                                onTap: () {
                                  GoRouter.of(context)
                                      .goNamed(BookmarkPage.routeName);
                                },
                                child: ListTile(
                                  trailing: Icon(Icons.arrow_forward_ios),
                                  title: Text('お気に入り'),
                                ),
                              ),
                              CustomDivider(),
                              GestureDetector(
                                onTap: () {
                                  GoRouter.of(context)
                                      .goNamed(ManualPage.routeName);
                                },
                                child: ListTile(
                                  trailing: Icon(Icons.arrow_forward_ios),
                                  title: Text('使い方'),
                                ),
                              ),
                              CustomDivider(),
                              GestureDetector(
                                onTap: () {

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
                                  GoRouter.of(context)
                                      .goNamed(UserInquiry.routeName);
                                },
                                child: ListTile(
                                  trailing: Icon(Icons.arrow_forward_ios),
                                  title: Text('お問い合わせ'),
                                ),
                              ),
                              CustomDivider(),
                              GestureDetector(
                                onTap: () {},
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
                  // nullだったらログインしていないWidgetを表示する
                )
              : Scaffold(
                  backgroundColor: Colors.white,
                  appBar: AppBar(
                    title: Text('マイページ'),
                  ),
                  body: Center(
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 20, left: 20, bottom: 20),
                          child: Row(
                            children: [
                              Container(
                                child: Icon(Icons.person),
                              ),
                              const SizedBox(width: 20),
                              Column(
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  const Text('アカウントが登録されていません'),
                                  SizedBox(height: 20),
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
                                  GoRouter.of(context)
                                      .goNamed(BookmarkPage.routeName);
                                },
                                child: ListTile(
                                  trailing: Icon(Icons.arrow_forward_ios),
                                  title: Text('お気に入り'),
                                ),
                              ),
                              CustomDivider(),
                              GestureDetector(
                                onTap: () {
                                  GoRouter.of(context)
                                      .goNamed(ManualPage.routeName);
                                },
                                child: ListTile(
                                  trailing: Icon(Icons.arrow_forward_ios),
                                  title: Text('使い方'),
                                ),
                              ),
                              CustomDivider(),
                              GestureDetector(
                                onTap: () {

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
                                  GoRouter.of(context)
                                      .goNamed(UserInquiry.routeName);
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
                                  title: Text('ログイン'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
        });
  }
}
