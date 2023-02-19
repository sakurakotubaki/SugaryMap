import 'package:sugary_map/service/export/global_export.dart';
import 'package:sugary_map/theme/appbar_theme.dart';
import 'package:sugary_map/theme/button_theme.dart';

class OrderCancel extends StatefulWidget {
  const OrderCancel({Key? key}) : super(key: key);

  @override
  State<OrderCancel> createState() => _OrderCancelState();
}

class _OrderCancelState extends State<OrderCancel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('注文履歴詳細'),
        backgroundColor: MyAppBar.appBar.appColor,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 50),
            Container(width: 350, child: Text('サロンドego')),
            SizedBox(height: 10),
            Container(width: 350, child: Text('住所:東京都品川区')),
            SizedBox(height: 10),
            Container(width: 350, child: Text('電話番号:07063452287')),
            SizedBox(height: 10),
            Container(
              width: 350,
              child: Divider(
                color: Colors.grey,
              ),
            ),
            Container(
              width: 350,
              child: Row(
                children: [
                  Text('1'),
                  SizedBox(width: 20),
                  Text('モンテリマール'),
                ],
              ),
            ),
            Container(
              width: 350,
              child: Divider(
                color: Colors.grey,
              ),
            ),
            Container(
              width: 350,
              child: Row(
                children: [
                  Text('1'),
                  SizedBox(width: 20),
                  Text('フォンダンショコラ'),
                ],
              ),
            ),
            Container(
              width: 350,
              child: Divider(
                color: Colors.grey,
              ),
            ),
            Container(
              width: 350,
              child: Row(
                children: [
                  Text('1'),
                  SizedBox(width: 20),
                  Text('フロランタン'),
                ],
              ),
            ),
            Container(
              width: 350,
              child: Divider(
                color: Colors.grey,
              ),
            ),
            Container(
              width: 350,
              child: Row(
                children: [
                  Text('1'),
                  SizedBox(width: 20),
                  Text('マカロン'),
                ],
              ),
            ),
            Container(
              width: 350,
              child: Divider(
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 30),
            Container(
              width: 350,
              child: Row(
                children: [
                  Text('小計'),
                  SizedBox(width: 20),
                  Text('¥1440'),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: 350,
              child: Row(
                children: [
                  Text('合計'),
                  SizedBox(width: 20),
                  Text('4'),
                ],
              ),
            ),
            SizedBox(height: 50),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: MyButton.appButton.appColor),
                onPressed: () {},
                child: const Text(
                  '予約をキャンセルする',
                  style: TextStyle(fontSize: 20),
                )),
          ],
        ),
      ),
    );
  }
}
