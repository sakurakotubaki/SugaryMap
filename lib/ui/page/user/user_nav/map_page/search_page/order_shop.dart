import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:sugary_map/service/export/global_export.dart';
import 'package:sugary_map/theme/appbar_theme.dart';
import 'package:sugary_map/theme/button_theme.dart';
import 'package:sugary_map/ui/page/user/user_nav/post_page/add_post.dart';

class OrderShop extends StatefulWidget {
  const OrderShop({Key? key}) : super(key: key);

  @override
  State<OrderShop> createState() => _OrderShopState();
}

class _OrderShopState extends State<OrderShop> {
  List posts = ["店舗A", "店舗B", "店舗C"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('お店詳細'),
        backgroundColor: MyAppBar.appBar.appColor,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
                child: ListView.builder(
                    itemCount: posts.length,
                    itemBuilder: (BuildContext cotext, int index) {
                      final post = posts[index];
                      return ListTile(
                        onTap: (() {
                          GoRouter.of(context)
                              .go('/map/order_shop/order_reservation');
                          print('クリック!');
                        }),
                        title: Text(post),
                      );
                    })),
          ],
        ),
      ),
    );
  }
}
