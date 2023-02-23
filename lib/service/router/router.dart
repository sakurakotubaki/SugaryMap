import 'package:sugary_map/service/export/router_export.dart';
import 'package:sugary_map/service/export/shop_nabbar_export.dart';
import 'package:sugary_map/service/export/user_nabbar_export.dart';
import 'package:sugary_map/ui/page/user/user_nav/mypage/order/dummy_buy.dart';
import 'package:sugary_map/ui/page/user/user_nav/mypage/order/dummy_detail.dart';

import '../../ui/page/user/user_nav/mypage/order_cancel/order_page.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');

final router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  // initialLocation: '/admin', // 最初に表示されるshop側のページ.
  // initialLocation: '/map',// 最初に表示されるuserページ.
  initialLocation: '/sign_in/sign_up', // 最初に表示されるページ.
  routes: [
    GoRoute(
      name: SignInPage.routeName,
      path: '/sign_in',
      builder: (context, state) => const SignInPage(),
      routes: [
        // ユーザーのアカウント作成ページ.
        GoRoute(
          name: SelectSignUp.routeName,
          path: 'select_signup',
          builder: (context, state) => const SelectSignUp(),
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
          name: ForgetPassword.routeName,
          path: 'forget_password',
          builder: (context, state) => ForgetPassword(),
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
            routes: [
              GoRoute(
                path: 'shop_info',
                builder: (BuildContext context, GoRouterState state) {
                  return const ShopInfo();
                },
              ),
              GoRoute(
                  path: 'order_shop',
                  builder: (BuildContext context, GoRouterState state) {
                    return const OrderShop();
                  },
                  routes: [
                    GoRoute(
                        path: 'order_reservation',
                        builder: (BuildContext context, GoRouterState state) {
                          return const ShopReservation();
                        }),
                  ]),
            ]),
        GoRoute(
          path: '/post',
          builder: (BuildContext context, GoRouterState state) {
            return const PostPage();
          },
          routes: <RouteBase>[
            GoRoute(
              path: 'post_add',
              name: PostAdd.routeName,
              parentNavigatorKey: _rootNavigatorKey,
              builder: (BuildContext context, GoRouterState state) {
                return PostAdd();
              },
            ),
            GoRoute(
              path: 'post_detail',
              parentNavigatorKey: _rootNavigatorKey,
              builder: (BuildContext context, GoRouterState state) {
                return const PostDetail();
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
                  return const MaterialPage(
                      fullscreenDialog: true, child: TotalPage());
                },
                routes: [
                  GoRoute(
                      path: 'reserve',
                      builder: (BuildContext context, GoRouterState state) {
                        return const Reserevation();
                      }),
                ]),
            GoRoute(
                path: 'cart_update',
                builder: (BuildContext context, GoRouterState state) {
                  return const CartUpdate();
                })
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
              path: 'user_notification',
              builder: (BuildContext context, GoRouterState state) {
                return const UserNotification();
              },
            ),
            GoRoute(
                path: 'order_history',
                builder: (BuildContext context, GoRouterState state) {
                  return const OrderHistory();
                },
                routes: [
                  GoRoute(
                      path: 'order_cancel',
                      builder: (BuildContext context, GoRouterState state) {
                        return const OrderCancel();
                      }),
                ]),
            GoRoute(
                path: 'bookmark',
                builder: (BuildContext context, GoRouterState state) {
                  return const BookmarkPage();
                },
                routes: [
                  // ダミーのショップ
                  GoRoute(
                      path: 'dummy_detail',
                      builder: (BuildContext context, GoRouterState state) {
                        return const DummyDetail();
                      },
                      routes: [
                        GoRoute(
                          path: 'dummy_buy',
                          builder: (BuildContext context, GoRouterState state) {
                            return const DummyBuy();
                          },
                        ),
                      ]),
                ]),
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
                return const UserTerms();
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
            routes: [
              GoRoute(
                path: 'history_tab',
                builder: (context, state) {
                  return const HistoryTab();
                },
              ),
              GoRoute(
                path: 'user_info',
                builder: (context, state) {
                  return UserInfo();
                },
              ),
            ]),
        GoRoute(
            path: '/product',
            builder: (context, state) {
              return const ProductList();
            },
            routes: [
              GoRoute(
                  path: 'product_detail',
                  builder: (context, state) {
                    return const ProductDetail();
                  },
                  routes: [
                    GoRoute(
                      path: 'product_add',
                      pageBuilder: (context, state) {
                        return MaterialPage(
                            fullscreenDialog: true, child: ProductAdd());
                      },
                    ),
                    GoRoute(
                      path: 'product_edit',
                      builder: (context, state) {
                        return ProductEdit();
                      },
                    ),
                  ]),
            ]),
        GoRoute(
            path: '/setting',
            builder: (context, state) {
              return const ShopSettingPage();
            },
            routes: [
              GoRoute(
                path: 'shop_manual',
                builder: (context, state) {
                  return const ShopManualPage();
                },
              ),
              GoRoute(
                  path: 'shop_account',
                  builder: (context, state) {
                    return const ShopAccountSettings();
                  },
                  routes: [
                    GoRoute(
                      path: 'shop_mail',
                      builder: (context, state) {
                        return ShopMailUpdate();
                      },
                    ),
                    GoRoute(
                      path: 'shop_password',
                      builder: (context, state) {
                        return ShopPasswordUpdate();
                      },
                    ),
                    GoRoute(
                      path: 'update_shop',
                      builder: (context, state) {
                        return UpdateShop();
                      },
                    ),
                  ]),
              GoRoute(
                path: 'shop_privacy',
                builder: (context, state) {
                  return const ShopPrivacy();
                },
              ),
              GoRoute(
                path: 'shop_terms',
                builder: (context, state) {
                  return const ShopTerms();
                },
              ),
              GoRoute(
                path: 'shop_inquiry',
                builder: (context, state) {
                  return const ShopInquiry();
                },
              ),
            ]),
      ],
    ),
  ],
);
