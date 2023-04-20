// ignore_for_file: unused_import, unnecessary_import, prefer_const_constructors, avoid_unnecessary_containers, unnecessary_null_comparison

import 'package:sugary_map/application/analytics_provider/analytics.dart';
import 'package:sugary_map/application/auth_provider/sign_in/sign_in.dart';
import 'package:sugary_map/application/store_provider/get_profile/get_profile_provider.dart';
import 'package:sugary_map/presentation/constant/privacy_const.dart';
import 'package:sugary_map/presentation/export/global_export.dart';
import 'package:sugary_map/presentation/router/auth_provider.dart';
import 'package:sugary_map/presentation/ui/component/global/custom_divider.dart';
import 'package:sugary_map/presentation/ui/page/auth_page/signin_page.dart';
import 'package:sugary_map/presentation/ui/page/user/navigation_page/mypage/account/update_user.dart';
import 'package:sugary_map/presentation/ui/page/user/navigation_page/mypage/mypage_list/accont_page.dart';
import 'package:sugary_map/presentation/ui/page/user/navigation_page/mypage/mypage_list/profile_test.dart';
import 'package:url_launcher/url_launcher.dart';

class MyPage extends ConsumerWidget {
  const MyPage({super.key});

  static const routeName = '/myPage';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ユーザーのログイン状態を監視する
    final authStateAsync = ref.watch(authProvider);
    final signInService = ref.read(signInProvider);
    final analyticsRef = ref.read(analyticsServiceProvider);
    // Todo: ProfileData
    final getUser = ref.watch(profileProvider);

    return authStateAsync.when(
        loading: () => const CircularProgressIndicator(),
        error: (err, stack) => Text('Error: $err'),
        data: (user) {
          // nullじゃなかったら、ログインしているWidgetを表示
          return user != null
              ? Scaffold(
                  backgroundColor: Colors.white,
                  appBar: AppBar(
                    actions: [
                      Container(
                        margin: EdgeInsets.only(right: 30),
                        child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              'プロフィールを編集',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 17),
                            )),
                      ),
                    ],
                  ),
                  body: Center(
                    child: Column(
                      children: <Widget>[
                        Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 20, bottom: 20),
                            child: getUser.when(
                              loading: () => const CircularProgressIndicator(),
                              error: (err, stack) => Text('Error: $err'),
                              data: (value) {
                                // data => valueに変更。名前の衝突が起きる？
                                /// [静的解析が必要]
                                final data = value.data();
                                return Row(
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
                                      /// [data?[]を使う]
                                      child: data?['imageUrl'] != null

                                          /// [data![]を使う]
                                          ? Image.network(data!['imageUrl'])
                                          : null,
                                    ),
                                    const SizedBox(width: 20),
                                    Column(
                                      children: [
                                        data?['name'] != null
                                            ? Text(data!['name'])
                                            : const Text('プロフィールが登録されてません'),
                                        SizedBox(height: 20),
                                        Row(
                                          // ignore: prefer_const_literals_to_create_immutables
                                          children: [
                                            Text('称号'),
                                            SizedBox(width: 20),
                                            data?['degree'] != null
                                                ? Text(data!['degree'])
                                                : const Text('称号が登録されてません'),
                                          ],
                                        ),
                                      ],
                                    )
                                  ],
                                );
                              },
                            )),
                        Expanded(
                          child: ListView(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  // GoRouter.of(context)
                                  // .goNamed(ProfileTest.rootName);
                                  GoRouter.of(context)
                                      .goNamed(UpdateUser.routeName);
                                },
                                child: ListTile(
                                  trailing: Icon(Icons.arrow_forward_ios),
                                  title: Text('Profile Test'),
                                ),
                              ),
                              CustomDivider(),
                              GestureDetector(
                                onTap: () {},
                                child: ListTile(
                                  trailing: Icon(Icons.arrow_forward_ios),
                                  title: Text('お気に入り'),
                                ),
                              ),
                              CustomDivider(),
                              GestureDetector(
                                onTap: () {},
                                child: ListTile(
                                  trailing: Icon(Icons.arrow_forward_ios),
                                  title: Text('使い方'),
                                ),
                              ),
                              CustomDivider(),
                              GestureDetector(
                                onTap: () {
                                  context
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
                                onTap: () {},
                                child: ListTile(
                                  trailing: Icon(Icons.arrow_forward_ios),
                                  title: Text('お問い合わせ'),
                                ),
                              ),
                              CustomDivider(),
                              GestureDetector(
                                onTap: () async {
                                  signInService.signOut();
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
                                onTap: () {},
                                child: ListTile(
                                  trailing: Icon(Icons.arrow_forward_ios),
                                  title: Text('お気に入り'),
                                ),
                              ),
                              CustomDivider(),
                              GestureDetector(
                                onTap: () {},
                                child: ListTile(
                                  trailing: Icon(Icons.arrow_forward_ios),
                                  title: Text('使い方'),
                                ),
                              ),
                              CustomDivider(),
                              // GestureDetector(
                              //   onTap: () {
                              //     context
                              //         .goNamed(UserAccountSettings.routeName);
                              //   },
                              //   child: ListTile(
                              //     trailing: Icon(Icons.arrow_forward_ios),
                              //     title: Text('アカウント設定'),
                              //   ),
                              // ),
                              // CustomDivider(),
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
                                onTap: () {},
                                child: ListTile(
                                  trailing: Icon(Icons.arrow_forward_ios),
                                  title: Text('お問い合わせ'),
                                ),
                              ),
                              CustomDivider(),
                              GestureDetector(
                                onTap: () async {
                                  analyticsRef.logEvent();
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
