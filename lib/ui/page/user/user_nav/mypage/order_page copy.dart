import 'package:sugary_map/service/export/global_export.dart';
import 'package:sugary_map/theme/appbar_theme.dart';

const List<String> list = <String>['１ヶ月前', '3ヶ月前', '６ヶ月前', '１年前', '３年前'];

class OrderHistory extends StatefulWidget {
  const OrderHistory({Key? key}) : super(key: key);

  @override
  State<OrderHistory> createState() => _OrderHistoryState();
}

class _OrderHistoryState extends State<OrderHistory> {
  String dropdownValue = list.first;

  List posts = ["パティスリーニキ", "サロンドego", "フランス屋"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('注文履歴'),
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
                        onTap: (() {
                          GoRouter.of(context)
                              .go('/mypage/order_history/order_cancel');
                          print('fff');
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
