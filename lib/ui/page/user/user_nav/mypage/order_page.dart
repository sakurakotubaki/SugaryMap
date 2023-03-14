import 'package:sugary_map/service/export/global_export.dart';
import 'package:sugary_map/ui/page/user/user_nav/mypage/order_cancel/order_page.dart';

const List<String> list = <String>['１ヶ月前', '3ヶ月前', '６ヶ月前', '１年前', '３年前'];

class OrderHistory extends StatefulWidget {
  const OrderHistory({Key? key}) : super(key: key);

  static const routeName = 'orderHistory';

  @override
  State<OrderHistory> createState() => _OrderHistoryState();
}

class _OrderHistoryState extends State<OrderHistory> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('注文履歴'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 50),
            Container(
              alignment: const Alignment(0.5, 1.0),
              child: DropdownButton<String>(
                value: dropdownValue,
                icon: const Icon(Icons.arrow_drop_down),
                elevation: 16,
                style: const TextStyle(color: Colors.grey),
                underline: Container(
                  height: 2,
                  color: Colors.deepPurpleAccent,
                ),
                onChanged: (String? value) {
                  // This is called when the user selects an item.
                  setState(() {
                    dropdownValue = value!;
                  });
                },
                items: list.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
            // ダミーデータ.
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                GoRouter.of(context).goNamed(OrderCancel.routeName);
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
                  // 左のグレーのBOXと同じサイズにすると、Textを上に寄せることができる.
                  Container(
                    width: 100,
                    height: 100,
                    child: Column(
                      // Textを全て左端に寄せる設定.
                      crossAxisAlignment: CrossAxisAlignment.start,
                      verticalDirection: VerticalDirection.down,
                      children: [
                        Text('おやつやユー'),
                        SizedBox(height: 10),
                        Text('５点の商品'),
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
                // 左のグレーのBOXと同じサイズにすると、Textを上に寄せることができる.
                Container(
                  width: 100,
                  height: 100,
                  child: Column(
                    // Textを全て左端に寄せる設定.
                    crossAxisAlignment: CrossAxisAlignment.start,
                    verticalDirection: VerticalDirection.down,
                    children: [
                      Text('フランス屋'),
                      SizedBox(height: 10),
                      Text('2点の商品'),
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
