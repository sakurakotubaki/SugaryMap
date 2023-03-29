// ignore_for_file: duplicate_import, unused_import, body_might_complete_normally_nullable, unnecessary_import, unused_local_variable

import 'package:sugary_map/service/export/global_export.dart';
import 'package:sugary_map/service/export/router_export.dart';
import 'package:sugary_map/service/export/user_nabbar_export.dart';
import 'package:sugary_map/service/export/router_export.dart';
import 'package:sugary_map/service/router/auth_provider.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');

final goRouterProvider = Provider<GoRouter>((ref) {
  final authState = ref.watch(authProvider);
  final userState = ref.watch(userInfoProvider);

  return GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: '/', // 最初に表示されるページ.
    routes: [
// -----------------------------------------------------------------
      /// アプリケーションシェル
      /// この中にボトムナビゲーションバーする設定を書く.
      /// [ここから]
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (BuildContext context, GoRouterState state, Widget child) {
          return UserNavBar(child: child);
        },
        routes: <RouteBase>[
          GoRoute(
            name: HomePage.routeName,
            path: '/',
            builder: (BuildContext context, GoRouterState state) {
              return const HomePage();
            },
          ),
          GoRoute(
            name: PostPage.routeName,
            path: '/post',
            builder: (BuildContext context, GoRouterState state) {
              return const PostPage();
            },
          ),
          GoRoute(
            name: NotificationPage.routeName,
            path: '/notification',
            builder: (BuildContext context, GoRouterState state) {
              return const NotificationPage();
            }),
          GoRoute(
            name: MyPage.routeName,
            path: '/my_page',
            builder: (BuildContext context, GoRouterState state) {
              return const MyPage();
            }),
        ],
      ),
      /// [ここまで]
    ],

    // 認証状態によってリダイレクト処理をするコード
    // redirect: (BuildContext context, GoRouterState state) {
    //   if (authState.isLoading || authState.hasError) return null;
    //   // SignInPageへリダイレクトする
    //   final isStart = state.location == '/homePage';

    //   final isAuth = authState.valueOrNull != null;
    //   // !=をつけると変数がbool型になる。
    //   final isUser = userState.valueOrNull?.data() != null;

    //   // ユーザープロフィールが入力済みです。
    //   final userProfileCompleted =
    //       userState.valueOrNull?.data()?['name'] != null;

    //   // ユーザーがスタートページへ来ようとしていて、ログインしてなければ素通りさせる。
    //   if (isStart && !isAuth) {
    //     return null;
    //   }
    //   // isStartでなければ素通りさせて良い。
    //   if (!isStart) {
    //     return null;
    //   }

    //   // ログインしていてuserコレクションが取得できれば、MapPageへ
    //   if (isAuth && userProfileCompleted) {
    //     return '/home';
    //     // ログインしていてshopコレクションが取得できればお店のページへ
    //   } else if (isAuth && !isUser) {
    //     return '/create_user';
    //     // ログインしていない状態で、コレクションが取得できなければ、
    //     // ! bool値を反転
    //     // ログインボタンと新規登録のボタンがあるページへ移動する。
    //   } else if (!isAuth && !isUser) {
    //     return '/home';
    //   }
    // }
  );
});
