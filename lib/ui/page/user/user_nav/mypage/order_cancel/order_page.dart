import 'package:sugary_map/service/export/global_export.dart';
import 'package:sugary_map/theme/appbar_theme.dart';
import 'package:sugary_map/theme/button_theme.dart';

const List<String> list = <String>['１ヶ月前', '3ヶ月前', '６ヶ月前', '１年前', '３年前'];

class OrderCancel extends StatefulWidget {
  const OrderCancel({Key? key}) : super(key: key);

  @override
  State<OrderCancel> createState() => _OrderCancelState();
}

class _OrderCancelState extends State<OrderCancel> {
  String dropdownValue = list.first;

  List posts = ["1 モンテリマール", "1 フォンダンショコラ", "1 フロランタン"];

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
            const SizedBox(height: 20),
            Expanded(
                child: ListView.builder(
                    itemCount: posts.length,
                    itemBuilder: (BuildContext cotext, int index) {
                      final post = posts[index];
                      return ListTile(
                        onTap: (() {}),
                        title: Text(post),
                      );
                    })),
            Container(
              width: 300,
              child: Column(
                children: [Text('小計 ¥1440'), Text('合計 4')],
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
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
