import 'package:sugary_map/service/export/global_export.dart';

class UserNotification extends StatelessWidget {
  const UserNotification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('通知'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 30, top: 30),
        child: Container(
            width: 300,
            child: ListView(
              children: [
                Text('商品を予約しました', style: TextStyle(fontSize: 20)),
                SizedBox(height: 10),
                Text('予約がキャンセルされました', style: TextStyle(fontSize: 20)),
              ],
            )),
      ),
    );
  }
}
