import 'package:sugary_map/service/export/router_export.dart';
import 'package:sugary_map/service/export/shop_nabbar_export.dart';
import 'package:sugary_map/service/export/user_nabbar_export.dart';
import 'package:sugary_map/service/export/router_export.dart';
import 'package:sugary_map/ui/page/user/user_nav/mypage/order/dummy_buy.dart';
import 'package:sugary_map/ui/page/user/user_nav/mypage/order/dummy_detail.dart';
import 'package:sugary_map/ui/page/user/user_nav/mypage/order/dymmy_shop.dart';

import '../../ui/page/user/user_nav/mypage/order_cancel/order_page.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');

final router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  // initialLocation: '/admin', // 最初に表示されるshop側のページ.
  // initialLocation: '/map',// 最初に表示されるuserページ.
  initialLocation: '/sign_in', // 最初に表示されるページ.
  routes: [
    GoRoute(
      name: SignInPage.routeName,
      path: '/sign_in',
      builder: (context, state) => SignInPage(),
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
            name: MapPage.routeName,
            path: '/map',
            builder: (BuildContext context, GoRouterState state) {
              return const MapPage();
            },
            routes: [
              GoRoute(
                path: 'shop_info',
                name: ShopInfo.routeName,
                builder: (BuildContext context, GoRouterState state) {
                  return const ShopInfo();
                },
              ),
              GoRoute(
                  name: OrderShop.routeName,
                  path: 'order_shop',
                  builder: (BuildContext context, GoRouterState state) {
                    return const OrderShop();
                  },
                  routes: [
                    GoRoute(
                        name: ShopReservation.routeName,
                        path: 'order_reservation',
                        builder: (BuildContext context, GoRouterState state) {
                          return const ShopReservation();
                        }),
                  ]),
            ]),
        GoRoute(
          name: PostPage.routeName,
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
              name: PostDetail.routeName,
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
          name: CartPage.routeName,
          builder: (BuildContext context, GoRouterState state) {
            return const CartPage();
          },
          routes: <RouteBase>[
            GoRoute(
                path: 'total',
                name: TotalPage.routeName,
                pageBuilder: (context, state) {
                  return const MaterialPage(
                      fullscreenDialog: true, child: TotalPage());
                },
                routes: [
                  GoRoute(
                      path: 'reserve',
                      name: Reserevation.routeName,
                      builder: (BuildContext context, GoRouterState state) {
                        return const Reserevation();
                      }),
                ]),
            GoRoute(
                path: 'cart_update',
                name: CartUpdate.routeName,
                builder: (BuildContext context, GoRouterState state) {
                  return const CartUpdate();
                })
          ],
        ),

        /// 下部のナビゲーションバーに表示される3つ目の画面。
        GoRoute(
          path: '/mypage',
          name: MyPage.routeName,
          builder: (BuildContext context, GoRouterState state) {
            return const MyPage();
          },
          routes: <RouteBase>[
            GoRoute(
              path: 'user_notification',
              name: UserNotification.routeName,
              builder: (BuildContext context, GoRouterState state) {
                return const UserNotification();
              },
            ),
            GoRoute(
                path: 'order_history',
                name: OrderHistory.routeName,
                builder: (BuildContext context, GoRouterState state) {
                  return const OrderHistory();
                },
                routes: [
                  GoRoute(
                      path: 'order_cancel',
                      name: OrderCancel.routeName,
                      builder: (BuildContext context, GoRouterState state) {
                        return const OrderCancel();
                      }),
                ]),
            GoRoute(
                path: 'bookmark',
                name: BookmarkPage.routeName,
                builder: (BuildContext context, GoRouterState state) {
                  return const BookmarkPage();
                },
                routes: [
                  // ダミーのショップ
                  GoRoute(
                      path: 'dummy_detail',
                      name: DummyDetail.routeName,
                      builder: (BuildContext context, GoRouterState state) {
                        return const DummyDetail();
                      },
                      routes: [
                        GoRoute(
                          path: 'dummy_buy',
                          name: DummyBuy.routeName,
                          builder: (BuildContext context, GoRouterState state) {
                            return const DummyBuy();
                          },
                        ),
                      ]),
                ]),
            GoRoute(
              path: 'manual',
              name: ManualPage.routeName,
              builder: (BuildContext context, GoRouterState state) {
                return const ManualPage();
              },
            ),
            GoRoute(
                path: 'account',
                name: UserAccountSettings.routeName,
                builder: (BuildContext context, GoRouterState state) {
                  return const UserAccountSettings();
                },
                routes: [
                  GoRoute(
                    path: 'user_email_update',
                    name: UserEmailUpdate.routeName,
                    builder: (BuildContext context, GoRouterState state) {
                      return UserEmailUpdate();
                    },
                  ),
                  GoRoute(
                    path: 'user_password_update',
                    name: UserPasswordUpdate.routeName,
                    builder: (BuildContext context, GoRouterState state) {
                      return UserPasswordUpdate();
                    },
                  ),
                  GoRoute(
                    path: 'update_user',
                    name: UpdateUser.routeName,
                    builder: (BuildContext context, GoRouterState state) {
                      return UpdateUser();
                    },
                  ),
                ]),
            GoRoute(
              path: 'user_inquiry',
              name: UserInquiry.routeName,
              builder: (BuildContext context, GoRouterState state) {
                return const UserInquiry();
              },
            ),
            GoRoute(
              path: 'user_terms',
              name: UserTerms.routeName,
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
            name: AdminPage.routeName,
            builder: (context, state) {
              return const AdminPage();
            },
            routes: [
              GoRoute(
                path: 'history_tab',
                name: HistoryTab.routeName,
                builder: (context, state) {
                  return const HistoryTab();
                },
              ),
              GoRoute(
                path: 'user_info',
                name: UserInfo.routeName,
                builder: (context, state) {
                  return UserInfo();
                },
              ),
            ]),
        GoRoute(
            path: '/product',
            name: ProductList.routeName,
            builder: (context, state) {
              return const ProductList();
            },
            routes: [
              GoRoute(
                  path: 'product_detail',
                  name: ProductDetail.routeName,
                  builder: (context, state) {
                    return const ProductDetail();
                  },
                  routes: [
                    GoRoute(
                      path: 'product_add',
                      name: ProductAdd.routeName,
                      pageBuilder: (context, state) {
                        return MaterialPage(
                            fullscreenDialog: true, child: ProductAdd());
                      },
                    ),
                    GoRoute(
                      path: 'product_edit',
                      name: ProductEdit.routeName,
                      builder: (context, state) {
                        return ProductEdit();
                      },
                    ),
                  ]),
            ]),
        GoRoute(
            path: '/setting',
            name: ShopSettingPage.routeName,
            builder: (context, state) {
              return const ShopSettingPage();
            },
            routes: [
              GoRoute(
                path: 'shop_manual',
                name: ShopManualPage.routeName,
                builder: (context, state) {
                  return const ShopManualPage();
                },
              ),
              GoRoute(
                  path: 'shop_account',
                  name: ShopAccountSettings.routeName,
                  builder: (context, state) {
                    return const ShopAccountSettings();
                  },
                  routes: [
                    GoRoute(
                      path: 'shop_mail',
                      name: ShopMailUpdate.routeName,
                      builder: (context, state) {
                        return ShopMailUpdate();
                      },
                    ),
                    GoRoute(
                      path: 'shop_password',
                      name: ShopPasswordUpdate.routeName,
                      builder: (context, state) {
                        return ShopPasswordUpdate();
                      },
                    ),
                    GoRoute(
                      path: 'update_shop',
                      name: UpdateShop.routeName,
                      builder: (context, state) {
                        return UpdateShop();
                      },
                    ),
                  ]),
              GoRoute(
                path: 'shop_privacy',
                name: ShopPrivacy.routeName,
                builder: (context, state) {
                  return const ShopPrivacy();
                },
              ),
              GoRoute(
                path: 'shop_terms',
                name: ShopTerms.routeName,
                builder: (context, state) {
                  return const ShopTerms();
                },
              ),
              GoRoute(
                path: 'shop_inquiry',
                name: ShopInquiry.routeName,
                builder: (context, state) {
                  return const ShopInquiry();
                },
              ),
            ]),
      ],
    ),
  ],
);
