import 'package:sugary_map/service/export/global_export.dart';
import 'package:sugary_map/theme/appbar_theme.dart';

class ShopCart extends StatefulWidget {
  const ShopCart({Key? key}) : super(key: key);

  @override
  State<ShopCart> createState() => _ShopCartState();
}

class _ShopCartState extends State<ShopCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: MyAppBar.appBar.appColor,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Text('商品管理'),
            TextButton(
              onPressed: () {

              },
              child: const Text('View A details'),
            ),
          ],
        ),
      ),
    );
  }
}
