import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sugary_map/ui/page/user/user_nav/notification_page/notification_page.dart';
import 'package:sugary_map/ui/page/user/user_nav/map_page/home_page.dart';
import 'package:sugary_map/ui/page/user/user_nav/mypage/mypage.dart';
import 'package:sugary_map/ui/page/user/user_nav/post_page/post_page.dart';

class UserNavBar extends StatefulWidget {
  const UserNavBar({
    required this.child,
    Key? key,
  }) : super(key: key);

  final Widget child;

  @override
  State<UserNavBar> createState() => _UserNavBarState();

  static int _calculateSelectedIndex(BuildContext context) {
    final String location = GoRouterState.of(context).location;
    if (location.startsWith('/map')) {
      return 0;
    }
    if (location.startsWith('/post')) {
      return 1;
    }
    if (location.startsWith('/cart')) {
      return 2;
    }
    if (location.startsWith('/mypage')) {
      return 3;
    }
    return 0;
  }
}

class _UserNavBarState extends State<UserNavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.child,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'ホーム',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.comment),
            label: '口コミ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: '通知',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'マイページ',
          ),
        ],
        currentIndex: UserNavBar._calculateSelectedIndex(context),
        onTap: (int idx) => _onItemTapped(idx, context),
      ),
    );
  }

  void _onItemTapped(int index, BuildContext context) {
    switch (index) {
      case 0:
        GoRouter.of(context).goNamed(HomePage.routeName);
        break;
      case 1:
        GoRouter.of(context).goNamed(PostPage.routeName);
        break;
      case 2:
        GoRouter.of(context).goNamed(NotificationPage.routeName);
        break;
      case 3:
        GoRouter.of(context).goNamed(MyPage.routeName);
        break;
    }
  }
}
