import 'package:sugary_map/presentation/export/global_export.dart';

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
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[],
          ),
        ));
  }
}
