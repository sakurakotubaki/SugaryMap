import 'package:sugary_map/service/export/global_export.dart';
import 'package:sugary_map/theme/appbar_theme.dart';

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
          centerTitle: true,
          backgroundColor: MyAppBar.appBar.appColor,
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[],
          ),
        ));
  }
}
