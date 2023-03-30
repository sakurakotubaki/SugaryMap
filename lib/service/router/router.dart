import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:sugary_map/ui/page/user/navigation_page/map_page/home_page.dart';
import 'package:sugary_map/ui/page/user/navigation_page/mypage/mypage.dart';
import 'package:sugary_map/ui/page/user/navigation_page/notification_page/notification_page.dart';
import 'package:sugary_map/ui/page/user/navigation_page/post_page/post_page.dart';
import 'package:sugary_map/ui/page/user/navigation_page/scaffold_navbar.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');

final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: '/home',
    routes: <RouteBase>[
ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (BuildContext context, GoRouterState state, Widget child) {
        return ScaffoldWithNavBar(child: child);
      },
      routes: <RouteBase>[
        GoRoute(
          path: '/home',
          builder: (BuildContext context, GoRouterState state) {
            return const HomePage();
          },
        ),
        GoRoute(
          path: '/post',
          builder: (BuildContext context, GoRouterState state) {
            return const PostPage();
          },
        ),
        GoRoute(
          path: '/notification',
          builder: (BuildContext context, GoRouterState state) {
            return const NotificationPage();
          },
        ),
        GoRoute(
          path: '/my_page',
          builder: (BuildContext context, GoRouterState state) {
            return const MyPage();
          },
        ),
      ],
    ),
    ],
  );
});



// // 認証状態によってリダイレクト処理をするコード
//       redirect: (BuildContext context, GoRouterState state) {
//         if (authState.isLoading || authState.hasError) return null;
//         // SignInPageへリダイレクトする
//         final isStart = state.location == '/a';

//         final isAuth = authState.valueOrNull != null;
//         // !=をつけると変数がbool型になる。
//         final isUser = userState.valueOrNull?.data() != null;

//         // ユーザープロフィールが入力済みです。
//         final userProfileCompleted =
//             userState.valueOrNull?.data()?['name'] != null;

//         // ユーザーがスタートページへ来ようとしていて、ログインしてなければ素通りさせる。
//         if (isStart && !isAuth) {
//           return null;
//         }
//         // isStartでなければ素通りさせて良い。
//         if (!isStart) {
//           return null;
//         }

//         // ログインしていてuserコレクションが取得できれば、MapPageへ
//         if (isAuth && userProfileCompleted) {
//           return '/a';
//           // ログインしていてshopコレクションが取得できればお店のページへ
//         } else if (isAuth && !isUser) {
//           return '/create_user';
//           // ログインしていない状態で、コレクションが取得できなければ、
//           // ! bool値を反転
//         } else if (!isAuth && !isUser) {
//           return '/a';
//         }
