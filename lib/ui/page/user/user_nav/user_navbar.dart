import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
            icon: Icon(Icons.pin_drop),
            label: 'お店',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.comment),
            label: '口コミ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'カート',
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
        GoRouter.of(context).go('/map');
        break;
      case 1:
        GoRouter.of(context).go('/post');
        break;
      case 2:
        GoRouter.of(context).go('/cart');
        break;
      case 3:
        GoRouter.of(context).go('/mypage');
        break;
    }
  }
}
