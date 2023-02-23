import 'package:sugary_map/service/export/global_export.dart';

class TotalPage extends StatefulWidget {
  const TotalPage({Key? key}) : super(key: key);
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
                child: const Center(
                    child: Center(
                        child: Text('日時を指定', style: TextStyle(fontSize: 20)))),
              ),
              const SizedBox(height: 20),
              const SizedBox(width: 350, child: Text('サロンドego')),
              const SizedBox(height: 10),
              const SizedBox(width: 350, child: Text('住所:東京都品川区')),
              const SizedBox(height: 10),
              const SizedBox(width: 350, child: Text('電話番号:07063452287')),
              const SizedBox(height: 10),
              const SizedBox(
                width: 350,
                child: Divider(
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                width: 350,
                child: Row(
                  children: const [
                    Text('1'),
                    SizedBox(width: 20),
                    Text('モンテリマール'),
                  ],
                ),
              ),
              const SizedBox(
                width: 350,
                child: Divider(
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                width: 350,
                child: Row(
                  children: const [
                    Text('1'),
                    SizedBox(width: 20),
                    Text('フォンダンショコラ'),
                  ],
                ),
              ),
              const SizedBox(
                width: 350,
                child: Divider(
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                width: 350,
                child: Row(
                  children: const [
                    Text('1'),
                    SizedBox(width: 20),
                    Text('フロランタン'),
                  ],
                ),
              ),
              const SizedBox(
                width: 350,
                child: Divider(
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                width: 350,
                child: Row(
                  children: const [
                    Text('1'),
                    SizedBox(width: 20),
                    Text('マカロン'),
                  ],
                ),
              ),
              const SizedBox(
                width: 350,
                child: Divider(
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: 350,
                child: Row(
                  children: const [
                    Text('合計'),
                    SizedBox(width: 20),
                    Text('¥1440'),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: 300,
                child: TextFormField(
                  maxLines: 5,
                  keyboardType: TextInputType.multiline,
                  decoration: const InputDecoration(
                      hintText:
                          "(例)食物アレルギーでキゥイがダメ、メッセージプレートの内容が、英語でHappy Birthday",
                      border: OutlineInputBorder()),
                ),
              ),
              const SizedBox(height: 50),
              ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.black87),
                  onPressed: () {},
                  child: const Text(
                    '予約をする',
                    style: TextStyle(fontSize: 20),
                  )),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
