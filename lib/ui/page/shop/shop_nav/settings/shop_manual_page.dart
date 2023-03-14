import 'package:sugary_map/service/export/global_export.dart';

class ShopManualPage extends StatelessWidget {
  const ShopManualPage({Key? key}) : super(key: key);

  static const routeName = 'shopManualPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('使い方'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[],
          ),
        ),
      ),
    );
  }
}
