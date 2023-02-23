import 'package:sugary_map/service/export/global_export.dart';

class TotalPage extends StatefulWidget {
  const TotalPage({Key? key}) : super(key: key);

  static const routeName = 'totalPage';

  @override
  State<TotalPage> createState() => _TotalPageState();
}

class _TotalPageState extends State<TotalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('お会計'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 50),
              Container(
                width: 200,
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                ),
                child: Center(
                    child: Center(
                        child: Text('日時を指定', style: TextStyle(fontSize: 20)))),
              ),
              SizedBox(height: 20),
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
              SizedBox(height: 20),
              Container(
                width: 350,
                child: Row(
                  children: [
                    Text('合計'),
                    SizedBox(width: 20),
                    Text('¥1440'),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 300,
                child: TextFormField(
                  maxLines: 5,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                      hintText:
                          "(例)食物アレルギーでキゥイがダメ、メッセージプレートの内容が、英語でHappy Birthday",
                      border: OutlineInputBorder()),
                ),
              ),
              SizedBox(height: 50),
              ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.black87),
                  onPressed: () {},
                  child: const Text(
                    '予約をする',
                    style: TextStyle(fontSize: 20),
                  )),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
