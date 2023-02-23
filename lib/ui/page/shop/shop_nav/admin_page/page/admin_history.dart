import 'package:sugary_map/service/export/global_export.dart';
import 'dart:developer';

import 'package:sugary_map/ui/component/global/custom_divider.dart';

class AdminHistory extends StatefulWidget {
  AdminHistory({Key? key}) : super(key: key);

  @override
  State<AdminHistory> createState() => _AdminHistoryState();
}

class _AdminHistoryState extends State<AdminHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 20),
          Container(
              alignment: Alignment(-0.9, -1.0),
              child: Text('2023年1月〜4月', style: TextStyle(fontSize: 20))),
          SizedBox(height: 20),
          CustomDivider(),
          Container(
              alignment: Alignment(-0.8, -1.0),
              child: Text(
                '24 1月 15:30 田中太郎様',
                style: TextStyle(fontSize: 20),
              )),
          SizedBox(height: 10),
          Container(
              alignment: Alignment(-0.8, -1.0),
              child: Text('ショートケーキ6号 １個', style: TextStyle(fontSize: 20))),
          SizedBox(height: 10),
          Container(
              alignment: Alignment(-0.8, -1.0),
              child: Text('フルーツタルト 2個', style: TextStyle(fontSize: 20))),
          SizedBox(height: 10),
          Container(
              width: 350,
              alignment: Alignment(-0.9, -1.0),
              child: Text('メッセージプレートは、優ちゃんお誕生日おめでとうでお願いいたします。',
                  style: TextStyle(fontSize: 20))),
          CustomDivider(),
          SizedBox(height: 20),
          Container(
              alignment: Alignment(-0.8, -1.0),
              child: Text(
                '23 1月 10:00 鈴木茂様',
                style: TextStyle(fontSize: 20),
              )),
          SizedBox(height: 10),
          Container(
              alignment: Alignment(-0.8, -1.0),
              child: Text('ショートケーキ4号 １個', style: TextStyle(fontSize: 20))),
          SizedBox(height: 10),
          Container(
              alignment: Alignment(-0.8, -1.0),
              child: Text('ガトーショコラ３号 １個', style: TextStyle(fontSize: 20))),
          SizedBox(height: 10),
          Container(
              alignment: Alignment(-0.8, -1.0),
              child: Text('シュークリーム ３個', style: TextStyle(fontSize: 20))),
          SizedBox(height: 10),
          Container(
              width: 350,
              alignment: Alignment(-0.9, -1.0),
              child: Text('キゥイアレルギーがありますので、ショートケーキには、使わないでください。',
                  style: TextStyle(fontSize: 20))),
        ],
      ),
    ));
  }
}
