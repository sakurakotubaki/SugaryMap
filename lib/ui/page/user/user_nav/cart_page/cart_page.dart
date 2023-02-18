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
  List<String> itemList = [
    "2 ショートケーキ ¥500",
    "3 ガトーショコラ ¥500",
    "3 シュークリーム ¥900"
  ];

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
                  Expanded(
                    child: ListView.builder(
                      itemCount: itemList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          onTap: () => {
                            GoRouter.of(context).go('/cart/cart_update'),
                          },
                          title: Text('${itemList[index]}'),
                        );
                      },
                    ),
                  ),
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
          children: <Widget>[
            SizedBox(height: 40),
            Row(
              children: [
                Container(
                  // 水平方向にContainerを寄せる.
                  // 左端にスペースを20.0空ける.
                  margin: EdgeInsets.symmetric(horizontal: 20.0),
                  width: 100,
                  height: 100,
                  color: Colors.grey,
                ),
                SizedBox(width: 20),
                Container(
                  width: 200,
                  height: 100,
                  child: Column(
                    // Textを全て左端に寄せる設定.
                    crossAxisAlignment: CrossAxisAlignment.start,
                    verticalDirection: VerticalDirection.down,
                    children: [
                      Text('パティスリーニキ'),
                      SizedBox(height: 10),
                      Text('5点の商品'),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Container(
                  // 水平方向にContainerを寄せる.
                  // 左端にスペースを20.0空ける.
                  margin: EdgeInsets.symmetric(horizontal: 20.0),
                  width: 100,
                  height: 100,
                  color: Colors.grey,
                ),
                SizedBox(width: 20),
                Container(
                  width: 200,
                  height: 100,
                  child: Column(
                    // Textを全て左端に寄せる設定.
                    crossAxisAlignment: CrossAxisAlignment.start,
                    verticalDirection: VerticalDirection.down,
                    children: [
                      Text('おやつやユー'),
                      SizedBox(height: 10),
                      Text('3点の商品'),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
