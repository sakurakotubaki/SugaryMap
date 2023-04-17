import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:sugary_map/presentation/router/auth_provider.dart';
import 'package:sugary_map/presentation/ui/page/auth_page/forget_password.dart';
import 'package:sugary_map/presentation/ui/page/auth_page/signin_page.dart';
import 'package:sugary_map/presentation/ui/page/auth_page/signup_page.dart';
import 'package:sugary_map/presentation/ui/page/user/navigation_page/map_page/home_page.dart';
import 'package:sugary_map/presentation/ui/page/user/navigation_page/mypage/mypage.dart';
import 'package:sugary_map/presentation/ui/page/user/navigation_page/notification_page/notification_page.dart';
import 'package:sugary_map/presentation/ui/page/user/navigation_page/post_page/post_page.dart';
import 'package:sugary_map/presentation/ui/page/user/navigation_page/scaffold_navbar.dart';
import 'package:sugary_map/presentation/ui/page/user/profile/data_service/user_data_service.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');

final goRouterProvider = Provider<GoRouter>((ref) {
  final authChange = ref.watch(authProvider);
  return GoRouter(
    observers: [
      // GoogleAnalyticsの設定
      FirebaseAnalyticsObserver(analytics: FirebaseAnalytics.instance),
    ],
    redirect: (BuildContext context, GoRouterState state) {
      if (authChange.isLoading || authChange.hasError) return null;

      // GoRouterStateの機能でログインしていなければ
      // 最初に表示されるページへ画面遷移する
      final isStart = state.location == '/';
      // ログインしているか判定する変数
      final isAuth = authChange.valueOrNull != null;

      // ユーザーがスタートページへ来ようとしていて、ログインしてなければ素通りさせる。
      if (isStart && !isAuth) {
        return null;
      }
      // isStartでなければ素通りさせて良い。
      if (!isStart) {
        return null;
      }

      // ユーザーがログインしていたら、HomePageへリダイレクト
      if (isAuth) {
        return '/';
      }
    },
    navigatorKey: _rootNavigatorKey,
    initialLocation: '/',
    routes: <RouteBase>[
      // 通常のルート
      GoRoute(
          path: '/login',
          builder: (BuildContext context, GoRouterState state) {
            return const SignInPage();
          }),
      GoRoute(
        path: '/new',
        builder: (BuildContext context, GoRouterState state) {
          return const SignUpPage();
        },
      ),
      GoRoute(
        path: '/reset',
        builder: (BuildContext context, GoRouterState state) {
          return const ForgetPassword();
        },
      ),
      // ボトムナビゲーションバーのルート
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        pageBuilder: (BuildContext context, GoRouterState state, Widget child) {
          return NoTransitionPage(child: ScaffoldWithNavBar(child: child));
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
            name: NotificationPage.rootName,
            path: '/push',
            builder: (BuildContext context, GoRouterState state) {
              return const NotificationPage();
            },
          ),
          GoRoute(
              name: MyPage.routeName,
              path: '/my_page',
              builder: (BuildContext context, GoRouterState state) {
                return const MyPage();
              },
              routes: [
                GoRoute(
                    name: SignInPage.routeName,
                    path: 'sign_in',
                    builder: (BuildContext context, GoRouterState state) {
                      return const SignInPage();
                    },
                    routes: [
                      GoRoute(
                        name: SignUpPage.routeName,
                        path: 'sign_up',
                        builder: (BuildContext context, GoRouterState state) {
                          return const SignUpPage();
                        },
                      ),
                      GoRoute(
                        name: ForgetPassword.routeName,
                        path: 'forget',
                        builder: (BuildContext context, GoRouterState state) {
                          return const ForgetPassword();
                        },
                      ),
                    ]),
              ]),
        ],
      ),
    ],
  );
});
