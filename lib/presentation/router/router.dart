import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:sugary_map/presentation/ui/page/auth_page/signin_page.dart';
import 'package:sugary_map/presentation/ui/page/auth_page/signup_page.dart';
import 'package:sugary_map/presentation/ui/page/user/navigation_page/map_page/home_page.dart';
import 'package:sugary_map/presentation/ui/page/user/navigation_page/mypage/mypage.dart';
import 'package:sugary_map/presentation/ui/page/user/navigation_page/notification_page/notification_page.dart';
import 'package:sugary_map/presentation/ui/page/user/navigation_page/post_page/post_page.dart';
import 'package:sugary_map/presentation/ui/page/user/navigation_page/scaffold_navbar.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');

final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/a',
  routes: <RouteBase>[
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (BuildContext context, GoRouterState state, Widget child) {
        return ScaffoldWithNavBar(child: child);
      },
      routes: <RouteBase>[
        GoRoute(
          path: '/a',
          builder: (BuildContext context, GoRouterState state) {
            return const HomePage();
          },
        ),
        GoRoute(
          path: '/b',
          builder: (BuildContext context, GoRouterState state) {
            return const PostPage();
          },
        ),
        GoRoute(
          path: '/c',
          builder: (BuildContext context, GoRouterState state) {
            return const NotificationPage();
          },
        ),
        GoRoute(
          path: '/d',
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
          ]
        ),
          ]
        ),
      ],
    ),
  ],
);
});