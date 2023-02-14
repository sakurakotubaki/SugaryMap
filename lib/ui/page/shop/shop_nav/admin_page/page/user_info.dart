import 'package:sugary_map/service/export/global_export.dart';
import 'package:sugary_map/theme/appbar_theme.dart';
import 'package:sugary_map/ui/page/shop/shop_nav/admin_page/page/user_details/item_history/item_history.dart';

class UserInfo extends StatefulWidget {
  UserInfo({Key? key}) : super(key: key);

  @override
  State<UserInfo> createState() => _UserInfoState();
}

class _UserInfoState extends State<UserInfo> {
  List items = [
    "Aさん",
    "Bさん",
    "Cさん",
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
                      GoRouter.of(context).go('/admin/history_tab');
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
