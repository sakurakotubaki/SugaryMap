import 'package:sugary_map/service/export/global_export.dart';

class ShopInquiry extends StatelessWidget {
  const ShopInquiry({Key? key}) : super(key: key);

  static const routeName = 'shopInquiry';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('お問い合わせ'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 40),
          Container(
              width: 330,
              child: Text(
                  "SugaryMapをご利用いただきありがとうございます。トラブルやお困りごと、ご意見があればこちらから、ご連絡ください",
                  style: TextStyle(fontSize: 20))),
          SizedBox(height: 20),
          Container(),
          Container(
            width: 330,
            child: Row(
              children: [
                Icon(Icons.mail),
                SizedBox(width: 20),
                Text('jboy33company@gmail.com'),
              ],
            ),
          ),
          SizedBox(height: 10),
          // Container(width: 330, child: Text('copyright©️ JboyHashimoto'))
          Container(
              width: 330,
              child: Row(
                children: [
                  Icon(Icons.copyright),
                  SizedBox(width: 20),
                  Text('copyright©️ JboyHashimoto'),
                ],
              )),
        ],
      ),
    );
  }
}
