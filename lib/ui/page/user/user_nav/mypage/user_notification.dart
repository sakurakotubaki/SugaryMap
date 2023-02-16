import 'package:sugary_map/service/export/global_export.dart';
import 'package:sugary_map/theme/appbar_theme.dart';

class UserNotification extends StatelessWidget {
  const UserNotification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: MyAppBar.appBar.appColor,
        title: const Text('通知'),
      ),
      body: Column(
        children: <Widget>[
          const SizedBox(height: 40),
          Expanded(
              child: ListView(
            children: [
              Text('予約しました'),
              Text('予約をキャンセルがキャンセルされました'),
            ],
          ))
        ],
      ),
    );
  }
}
