import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
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
  return GoRouter(
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
        builder: (BuildContext context, GoRouterState state, Widget child) {
          return ScaffoldWithNavBar(child: child);
        },
        routes: <RouteBase>[
          GoRoute(
            path: '/',
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
            path: '/push',
            builder: (BuildContext context, GoRouterState state) {
              return const NotificationPage();
            },
          ),
          GoRoute(
              path: '/setting',
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
                    ]),
              ]),
        ],
      ),
    ],
  );
});
