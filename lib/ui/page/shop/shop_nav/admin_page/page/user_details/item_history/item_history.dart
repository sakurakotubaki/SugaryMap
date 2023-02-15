import 'package:sugary_map/service/export/global_export.dart';
import 'package:sugary_map/theme/appbar_theme.dart';

class ItemHistory extends StatefulWidget {
  ItemHistory({Key? key}) : super(key: key);

  static const rootName = 'itemHistory';

  @override
  State<ItemHistory> createState() => _ItemHistoryState();
}

class _ItemHistoryState extends State<ItemHistory> {
  List items = [
    "ショートケーキ",
    "ガトーショコラ",
    "チーズケーキ",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (BuildContext context, int index) {
                  final item = items[index];
                  return ListTile(
                    onTap: () {},
                    title: Text(item),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
