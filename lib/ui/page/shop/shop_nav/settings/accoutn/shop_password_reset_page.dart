import 'package:sugary_map/service/export/global_export.dart';
import 'package:sugary_map/service/export/shop_nabbar_export.dart';

class ShopPasswordUpdate extends StatefulWidget {
  ShopPasswordUpdate({Key? key}) : super(key: key);

  static const routeName = 'shopPasswordUpdate';

  @override
  State<ShopPasswordUpdate> createState() => _ShopPasswordUpdateState();
}

class _ShopPasswordUpdateState extends State<ShopPasswordUpdate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('パスワードの変更'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.lock_reset, size: 100.0, color: Colors.grey),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50),
              child: TextFormField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 20),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey)),
                    labelText: "メールアドレスを入力"),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: 300,
              height: 40,
              child: OutlinedButton(
                  onPressed: () {
                    context.goNamed(ShopAccountSettings.routeName);
                  },
                  child: Text(
                    'パスワードを変更',
                    style: TextStyle(color: Colors.black),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
