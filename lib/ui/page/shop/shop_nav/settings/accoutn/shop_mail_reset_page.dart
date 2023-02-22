import 'package:sugary_map/service/export/global_export.dart';
import 'package:sugary_map/theme/appbar_theme.dart';

class ShopMailUpdate extends StatefulWidget {
  ShopMailUpdate({Key? key}) : super(key: key);

  @override
  State<ShopMailUpdate> createState() => _ShopMailUpdateState();
}

class _ShopMailUpdateState extends State<ShopMailUpdate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: MyAppBar.appBar.appColor,
        title: const Text('メールアドレスの変更'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.mail_lock, size: 100.0, color: Colors.grey),
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
                  onPressed: () {},
                  child: Text(
                    'メールアドレスを変更',
                    style: TextStyle(color: Colors.black),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}