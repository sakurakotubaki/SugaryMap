import 'package:sugary_map/service/export/global_export.dart';

class UserInquiry extends StatelessWidget {
  const UserInquiry({Key? key}) : super(key: key);

  static const routeName = 'userInquiry';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('お問い合わせ'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const SizedBox(height: 40),
          Container(
            width: 350,
            child: Text(
                "SugaryMapをご利用いただきありがとうございます。\nトラブルやお困りごと、ご意見があればこちらから、ご連絡ください",
                style: TextStyle(fontSize: 20)),
          ),
          const SizedBox(height: 20),
          Container(),
          Container(
            width: 350,
            child: Row(
              children: const [
                Icon(Icons.mail),
                SizedBox(width: 20),
                Text('jboy33company@gmail.com'),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Container(
              width: 350,
              child: Row(
                children: const [
                  Icon(Icons.copyright),
                  SizedBox(width: 20),
                  Text('copyright©️ JboyHashimoto'),
                ],
              ))
        ],
      ),
    );
  }
}
