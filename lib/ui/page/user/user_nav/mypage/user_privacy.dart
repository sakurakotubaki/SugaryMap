import 'package:sugary_map/service/export/global_export.dart';
import 'package:sugary_map/theme/appbar_theme.dart';

class UserPrivacy extends StatefulWidget {
  const UserPrivacy({Key? key}) : super(key: key);

  @override
  State<UserPrivacy> createState() => _UserPrivacyState();
}

class _UserPrivacyState extends State<UserPrivacy> {
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
