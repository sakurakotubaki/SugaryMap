import 'package:sugary_map/service/export/global_export.dart';
import 'package:sugary_map/theme/appbar_theme.dart';

class ShopInquiry extends StatelessWidget {
  const ShopInquiry({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: MyAppBar.appBar.appColor,
        title: const Text('お問い合わせ'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 40),
          Text("""
  SugaryMapをご利用いただきあり
  がとうございます。
  トラブルやお困りごと、ご意見が
  あればこちらから、ご連絡ください
                """, style: TextStyle(fontSize: 20)),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 75),
            child: Row(
              children: [
                Icon(Icons.mail),
                SizedBox(width: 20),
                Text('JboyCompany@gmail.com'),
              ],
            ),
          ),
          SizedBox(height: 10),
          Text('copyright©️ JboyHashimoto')
        ],
      ),
    );
  }
}
