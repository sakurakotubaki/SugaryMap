import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sugary_map/service/export/shop_nabbar_export.dart';

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
            icon: Icon(Icons.calendar_month),
            label: '予約管理',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: '商品管理',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: '設定',
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
        // GoRouter.of(context).go('/admin');
        GoRouter.of(context).goNamed(AdminPage.routeName);
        break;
      case 1:
        // GoRouter.of(context).go('/product');
        GoRouter.of(context).goNamed(ProductList.routeName);
        break;
      case 2:
        // GoRouter.of(context).go('/setting');
        GoRouter.of(context).goNamed(ShopSettingPage.routeName);
        break;
    }
  }
}
