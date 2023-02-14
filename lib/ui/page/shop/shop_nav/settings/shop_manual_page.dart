import 'package:sugary_map/service/export/global_export.dart';
import 'package:sugary_map/theme/appbar_theme.dart';

class ShopManualPage extends StatelessWidget {
  const ShopManualPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('使い方'),
        backgroundColor: MyAppBar.appBar.appColor,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 40),
              Text("""
              fff
                    """, style: TextStyle(fontSize: 15)),
              SizedBox(height: 20),
              Text("""
              fff
                    """, style: TextStyle(fontSize: 15)),
            ],
          ),
        ),
      ),
    );
  }
}
