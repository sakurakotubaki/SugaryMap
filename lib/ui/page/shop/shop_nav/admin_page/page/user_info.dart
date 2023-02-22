import 'package:sugary_map/service/export/global_export.dart';
import 'package:sugary_map/ui/page/shop/shop_nav/admin_page/page/user_details/item_history/item_history.dart';

class UserInfo extends StatefulWidget {
  UserInfo({Key? key}) : super(key: key);

  @override
  State<UserInfo> createState() => _UserInfoState();
}

class _UserInfoState extends State<UserInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 20),
              Card(
                color: Colors.grey[300],
                child: TextField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.search), hintText: '店舗を検索'),
                  onChanged: (value) {},
                ),
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  GoRouter.of(context).go('/admin/history_tab');
                },
                child: Card(
                  color: Colors.grey[200],
                  child: Column(
                    children: [
                      Container(
                          width: 360,
                          child: Text('佐々木二郎様の購入履歴',
                              style: TextStyle(fontSize: 18))),
                      SizedBox(height: 10),
                      Container(
                          width: 360, child: Text('メールアドレス suzuki@co.jp')),
                      SizedBox(height: 10),
                      Container(width: 360, child: Text('TEL 07088334567')),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Card(
                color: Colors.grey[200],
                child: Column(
                  children: [
                    Container(
                        width: 360,
                        child:
                            Text('安倍晋三様の購入履歴', style: TextStyle(fontSize: 18))),
                    SizedBox(height: 10),
                    Container(width: 360, child: Text('メールアドレス abeshi@co.jp')),
                    SizedBox(height: 10),
                    Container(width: 360, child: Text('TEL 07088560044')),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Card(
                color: Colors.grey[200],
                child: Column(
                  children: [
                    Container(
                        width: 360,
                        child:
                            Text('田中太郎様の購入履歴', style: TextStyle(fontSize: 18))),
                    SizedBox(height: 10),
                    Container(width: 360, child: Text('メールアドレス tanaka@co.jp')),
                    SizedBox(height: 10),
                    Container(width: 360, child: Text('TEL 07099763345')),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
