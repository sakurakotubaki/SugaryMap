import 'package:sugary_map/service/export/nabbar_export.dart';
import 'package:sugary_map/service/export/router_export.dart';
import 'package:sugary_map/ui/page/shop/shop_nav/admin_page/admin_page.dart';
import 'package:sugary_map/ui/page/shop/shop_nav/cart_page/cart_page.dart';
import 'package:sugary_map/ui/page/shop/shop_nav/settings/settings.dart';
import 'package:sugary_map/ui/page/shop/shop_nav/shop_navbar.dart';
import 'package:sugary_map/ui/page/user/user_nav/cart_page/total/reserev/reserevation.dart';
import 'package:sugary_map/ui/page/user/user_nav/cart_page/total/total_page.dart';
import 'package:sugary_map/ui/page/user/user_nav/mypage/account/update_user.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');

final router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/admin', // 最初に表示されるページ.
  // initialLocation: '/sign_in',// 最初に表示されるページ.
  routes: [
    GoRoute(
      name: SignInPage.routeName,
      path: '/sign_in',
      builder: (context, state) => SignInPage(),
      routes: [
        // ユーザーのアカウント作成ページ.
        GoRoute(
          name: SignUpPage.routeName,
          path: 'sign_up',
          builder: (context, state) => SignUpPage(),
          routes: [
            GoRoute(
              name: UserSignupPage.routeName,
              path: 'user_sign_up',
              builder: (context, state) => UserSignupPage(),
            ),
            GoRoute(
              name: ShopSignupPage.routeName,
              path: 'shop_sign_up',
              builder: (context, state) => ShopSignupPage(),
            ),
          ],
        ),
        // パスワードのリセットページ.
        GoRoute(
          name: PasswordResetPage.routeName,
          path: 'reset_page',
          builder: (context, state) => PasswordResetPage(),
        ),
      ],
    ),
    // 一般ユーザー登録画面.
    GoRoute(
      name: CreateUser.routeName,
      path: '/create_user',
      builder: (context, state) => CreateUser(),
    ),
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (BuildContext context, GoRouterState state, Widget child) {
        return UserNavBar(child: child);
      },
      routes: <RouteBase>[
        /// 下部のナビゲーションバーに最初に表示される画面.
        GoRoute(
          path: '/map',
          builder: (BuildContext context, GoRouterState state) {
            return const MapPage();
          },
          routes: <RouteBase>[
            // 内側のナビゲータに重ねて表示する詳細画面。
            // これは画面Aをカバーするが、アプリケーションシェルはカバーしない。

            // GoRoute(
            //   path: 'details',
            //   builder: (BuildContext context, GoRouterState state) {
            //     return const DetailsScreen(label: 'A');
            //   },
            // ),
          ],
        ),
        GoRoute(
          path: '/post',
          builder: (BuildContext context, GoRouterState state) {
            return const PostPage();
          },
          routes: <RouteBase>[
            GoRoute(
              path: 'details',
              name: AddPost.routeName,
              parentNavigatorKey: _rootNavigatorKey,
              builder: (BuildContext context, GoRouterState state) {
                return AddPost();
              },
            ),
          ],
        ),

        /// 下部のナビゲーションバーに表示される3つ目の画面。
        GoRoute(
          path: '/cart',
          builder: (BuildContext context, GoRouterState state) {
            return const CartPage();
          },
          routes: <RouteBase>[
            GoRoute(
                path: 'total',
                pageBuilder: (context, state) {
                  return MaterialPage(
                      fullscreenDialog: true, child: TotalPage());
                },
                routes: [
                  GoRoute(
                      path: 'reserve',
                      builder: (BuildContext context, GoRouterState state) {
                        return const Reserevation();
                      }),
                ]),
          ],
        ),

        /// 下部のナビゲーションバーに表示される3つ目の画面。
        GoRoute(
          path: '/mypage',
          builder: (BuildContext context, GoRouterState state) {
            return const MyPage();
          },
          routes: <RouteBase>[
            GoRoute(
              path: 'order',
              builder: (BuildContext context, GoRouterState state) {
                return const OrderPage();
              },
            ),
            GoRoute(
              path: 'bookmark',
              builder: (BuildContext context, GoRouterState state) {
                return const BookmarkPage();
              },
            ),
            GoRoute(
              path: 'manual',
              builder: (BuildContext context, GoRouterState state) {
                return const ManualPage();
              },
            ),
            GoRoute(
                path: 'account',
                builder: (BuildContext context, GoRouterState state) {
                  return const AccontSettings();
                },
                routes: [
                  GoRoute(
                    path: 'user_email',
                    builder: (BuildContext context, GoRouterState state) {
                      return MailUpdate();
                    },
                  ),
                  GoRoute(
                    path: 'user_password',
                    builder: (BuildContext context, GoRouterState state) {
                      return PasswordUpdate();
                    },
                  ),
                  GoRoute(
                    path: 'update_user',
                    builder: (BuildContext context, GoRouterState state) {
                      return UpdateUser();
                    },
                  ),
                ]),
            GoRoute(
              path: 'inquiry',
              builder: (BuildContext context, GoRouterState state) {
                return const Inquiry();
              },
            ),
            GoRoute(
              path: 'terms',
              builder: (BuildContext context, GoRouterState state) {
                return const TermsOfService();
              },
            ),
          ],
        ),
      ],
    ),

    /// [ここまで]
    //--------------------------------------------------------------------
    // 店舗ユーザーの登録画面.
    GoRoute(
      name: CreateShop.routeName,
      path: '/create_shop',
      builder: (context, state) => CreateShop(),
    ),
    // 店舗用のボトムナビゲーションバー
    ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (BuildContext context, GoRouterState state, Widget child) {
          return ShopNavBar(child: child);
        },
        routes: <RouteBase>[
          GoRoute(
            path: '/admin',
            builder: (context, state) {
              return const AdminPage();
            },
          ),
          GoRoute(
            path: '/product',
            builder: (context, state) {
              return const ShopCart();
            },
          ),
          GoRoute(
            path: '/setting',
            builder: (context, state) {
              return const SettingPage();
            },
          )
        ])
  ],
);
