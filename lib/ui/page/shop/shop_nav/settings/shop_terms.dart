import 'package:sugary_map/service/export/global_export.dart';

class ShopTerms extends StatelessWidget {
  const ShopTerms({Key? key}) : super(key: key);

  static const routeName = 'shopTerms';
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
