import 'package:sugary_map/service/export/global_export.dart';

class UserNotification extends StatelessWidget {
  const UserNotification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('通知'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          const SizedBox(height: 40),
          Text('予約しました'),
          Text('予約がキャンセルされました'),
        ],
      ),
    );
  }
}
