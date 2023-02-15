import 'package:sugary_map/service/export/global_export.dart';
import 'package:sugary_map/theme/appbar_theme.dart';
import 'dart:developer';

class AdminHistory extends StatefulWidget {
  AdminHistory({Key? key}) : super(key: key);

  @override
  State<AdminHistory> createState() => _AdminHistoryState();
}

class _AdminHistoryState extends State<AdminHistory> {
  List items = [
    "トラさん",
    "むっくさん",
    "おっさん",
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
                    onTap: () {
                      
                    },
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
