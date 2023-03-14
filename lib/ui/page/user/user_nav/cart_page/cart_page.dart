import 'package:sugary_map/service/export/global_export.dart';
import 'package:sugary_map/ui/page/user/user_nav/cart_page/total/total_page.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  static const routeName = 'cartPage';

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('カート'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 40),
            GestureDetector(
              onTap: () {
                GoRouter.of(context).goNamed(TotalPage.routeName);
              },
              child: Row(
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
