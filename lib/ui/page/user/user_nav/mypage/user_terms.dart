import 'package:sugary_map/service/export/global_export.dart';

class UserTerms extends StatelessWidget {
  const UserTerms({Key? key}) : super(key: key);

  static const routeName = 'userTerms';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('利用規約'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 40),

        ],
      ),
    );
  }
}
