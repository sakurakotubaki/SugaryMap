import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ShopNavBar extends StatefulWidget {
  const ShopNavBar({
    required this.child,
    Key? key,
  }) : super(key: key);

  final Widget child;

  @override
  State<ShopNavBar> createState() => _ShopNavBarState();

  static int _calculateSelectedIndex(BuildContext context) {
    final String location = GoRouterState.of(context).location;
    if (location.startsWith('/admin')) {
      return 0;
    }
    if (location.startsWith('/product')) {
      return 1;
    }
    if (location.startsWith('/setting')) {
      return 2;
    }
    return 0;
  }
}

class _ShopNavBarState extends State<ShopNavBar> {
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
        ],
        currentIndex: ShopNavBar._calculateSelectedIndex(context),
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
    }
  }
}
