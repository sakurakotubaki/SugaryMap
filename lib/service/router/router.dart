// ignore_for_file: duplicate_import, unused_import, body_might_complete_normally_nullable

import 'package:sugary_map/service/export/global_export.dart';
import 'package:sugary_map/service/export/router_export.dart';
import 'package:sugary_map/service/export/user_nabbar_export.dart';
import 'package:sugary_map/service/export/router_export.dart';
import 'package:sugary_map/service/router/auth_provider.dart';
import 'package:sugary_map/ui/page/user/user_nav/mypage/order/dummy_buy.dart';
import 'package:sugary_map/ui/page/user/user_nav/mypage/order/dummy_detail.dart';
import 'package:sugary_map/ui/page/user/user_nav/mypage/order/dymmy_shop.dart';

import '../../ui/page/user/user_nav/mypage/order_cancel/order_page.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');

final goRouterProvider = Provider<GoRouter>((ref) {
  final authState = ref.watch(authProvider);
  final userState = ref.watch(userInfoProvider);

  return GoRouter(
      navigatorKey: _rootNavigatorKey,
      // initialLocation: '/map',// 最初に表示されるuserページ.
      initialLocation: '/sign_in', // 最初に表示されるページ.
      routes: [
        GoRoute(
            name: SignInPage.routeName,
            path: '/sign_in',
            builder: (context, state) => const SignInPage(),
            routes: [
              GoRoute(
                    name: UserSignUpPage.routeName,
                    path: 'user_sign_up',
                    builder: (context, state) => const UserSignUpPage(),
                  ),
                  // パスワードのリセットページ.
                  GoRoute(
                    name: ForgetPassword.routeName,
                    path: 'forget_password',
                    builder: (context, state) => const ForgetPassword(),
                  ),
                ],
              ),
              // 一般ユーザー登録画面.
              GoRoute(
                name: CreateUser.routeName,
                path: '/create_user',
                builder: (context, state) => const CreateUser(),
              ),
              ShellRoute(
                navigatorKey: _shellNavigatorKey,
                builder:
                    (BuildContext context, GoRouterState state, Widget child) {
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
                            builder:
                                (BuildContext context, GoRouterState state) {
                              return const OrderShop();
                            },
                            routes: [
                              GoRoute(
                                  name: ShopReservation.routeName,
                                  path: 'order_reservation',
                                  builder: (BuildContext context,
                                      GoRouterState state) {
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
                                builder: (BuildContext context,
                                    GoRouterState state) {
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
                                builder: (BuildContext context,
                                    GoRouterState state) {
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
                                builder: (BuildContext context,
                                    GoRouterState state) {
                                  return const DummyDetail();
                                },
                                routes: [
                                  GoRoute(
                                    path: 'dummy_buy',
                                    name: DummyBuy.routeName,
                                    builder: (BuildContext context,
                                        GoRouterState state) {
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
                              builder:
                                  (BuildContext context, GoRouterState state) {
                                return UserEmailUpdate();
                              },
                            ),
                            GoRoute(
                              path: 'user_password_update',
                              name: UserPasswordUpdate.routeName,
                              builder:
                                  (BuildContext context, GoRouterState state) {
                                return UserPasswordUpdate();
                              },
                            ),
                            GoRoute(
                              path: 'update_user',
                              name: UpdateUser.routeName,
                              builder:
                                  (BuildContext context, GoRouterState state) {
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
            ],
            // 認証状態によってリダイレクト処理をするコード
            redirect: (BuildContext context, GoRouterState state) {
              if (authState.isLoading || authState.hasError) return null;
              // SignInPageへリダイレクトする
              final isStart = state.location == '/sign_in';

              final isAuth = authState.valueOrNull != null;
              // !=をつけると変数がbool型になる。
              final isUser = userState.valueOrNull?.data() != null;

              // ユーザープロフィールが入力済みです。
              final userProfileCompleted =
                  userState.valueOrNull?.data()?['name'] != null;

              // ユーザーがスタートページへ来ようとしていて、ログインしてなければ素通りさせる。
              if (isStart && !isAuth) {
                return null;
              }
              // isStartでなければ素通りさせて良い。
              if (!isStart) {
                return null;
              }

              // ログインしていてuserコレクションが取得できれば、MapPageへ
              if (isAuth && userProfileCompleted) {
                return '/map';
                // ログインしていてshopコレクションが取得できればお店のページへ
              } else if (isAuth && !isUser) {
                return '/create_user';
                // ログインしていない状態で、コレクションが取得できなければ、
                // ! bool値を反転
                // ログインボタンと新規登録のボタンがあるページへ移動する。
              } else if (!isAuth && !isUser) {
                return '/sign_in';
              }
            });
});
