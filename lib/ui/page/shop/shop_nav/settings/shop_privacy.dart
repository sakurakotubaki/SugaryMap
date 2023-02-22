import 'package:sugary_map/service/export/global_export.dart';

class ShopPrivacy extends StatefulWidget {
  const ShopPrivacy({Key? key}) : super(key: key);

  @override
  State<ShopPrivacy> createState() => _ShopPrivacyState();
}

class _ShopPrivacyState extends State<ShopPrivacy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('プライバシーポリシー'),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[],
          ),
        ));
  }
}
