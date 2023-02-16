import 'package:sugary_map/service/export/global_export.dart';
import 'package:sugary_map/theme/appbar_theme.dart';
import 'package:sugary_map/theme/button_theme.dart';
import 'package:sugary_map/theme/warming.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  List posts = ["パティスリーニキ", "サロンドego"];
  List<String> itemList = ["2 ショートケーキ ¥500", "3 ガトーショコラ ¥500", "3 シュークリーム ¥900"];

  void _showBottomSheetMenu(BuildContext context) {
    showModalBottomSheet(
        context: context,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(10.0)),
        ),
        builder: (builder) {
          return Container(
            height: 800.0,
            color: Colors.transparent,
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: 30),
                  Text("サロンド・エゴ"),
                  Expanded(child: ListView.builder(
                    itemCount: itemList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        onTap: () => {
                          GoRouter.of(context).go('/cart/cart_update'),
                        },
                        title: Text('${itemList[index]}'),
                      );
                    },
                  ),),
                  SizedBox(height: 30),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: MyButton.appButton.appColor),
                      onPressed: () {
                        Navigator.of(context).pop();
                        GoRouter.of(context).go('/cart/total');
                      },
                      child: Text('お会計に進む'))
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('カート'),
        backgroundColor: MyAppBar.appBar.appColor,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Text('カートに商品が入っていません!',
            //     style: TextStyle(color: WarmingColor.textColor.appColor)),
            Expanded(
                child: ListView.builder(
                    itemCount: posts.length,
                    itemBuilder: (BuildContext cotext, int index) {
                      final post = posts[index];
                      return ListTile(
                        onTap: (() {
                          _showBottomSheetMenu(context);
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
