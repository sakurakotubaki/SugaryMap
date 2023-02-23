import 'package:sugary_map/service/export/global_export.dart';
import 'package:sugary_map/ui/component/global/custom_divider.dart';

class ItemHistory extends StatefulWidget {
  ItemHistory({Key? key}) : super(key: key);

  static const rootName = 'itemHistory';

  @override
  State<ItemHistory> createState() => _ItemHistoryState();
}

class _ItemHistoryState extends State<ItemHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 20),
          Container(
              alignment: Alignment(-0.9, -1.0),
              child: Text('2023年1月', style: TextStyle(fontSize: 20))),
          SizedBox(height: 10),
          Container(
              alignment: Alignment(-0.8, -1.0),
              child:
                  Text('ショートケーキ4号 １個 ¥1980', style: TextStyle(fontSize: 20))),
          SizedBox(height: 10),
          Container(
              alignment: Alignment(-0.8, -1.0),
              child: Text('ガトーショコラ １個 ¥420', style: TextStyle(fontSize: 20))),
          SizedBox(height: 10),
          Container(
              alignment: Alignment(-0.8, -1.0),
              child: Text('シュークリーム ３個 ¥ 750', style: TextStyle(fontSize: 20))),
          SizedBox(height: 10),
          Container(
              width: 350,
              alignment: Alignment(-0.9, -1.0),
              child: Text('キゥイアレルギーがありますので、ショートケーキには、使わないでください。',
                  style: TextStyle(fontSize: 20))),
          CustomDivider(),
          SizedBox(height: 20),
          Container(
              alignment: Alignment(-0.8, -1.0),
              child:
                  Text('ショートケーキ6号 １個 ¥4200', style: TextStyle(fontSize: 20))),
          SizedBox(height: 10),
          Container(
              alignment: Alignment(-0.8, -1.0),
              child: Text('フルーツタルト 2個 ¥900', style: TextStyle(fontSize: 20))),
          SizedBox(height: 10),
          Container(
              width: 350,
              alignment: Alignment(-0.9, -1.0),
              child: Text('メッセージプレートは、優ちゃんお誕生日おめでとうでお願いいたします。',
                  style: TextStyle(fontSize: 20))),
          CustomDivider(),
        ],
      ),
    ));
  }
}
