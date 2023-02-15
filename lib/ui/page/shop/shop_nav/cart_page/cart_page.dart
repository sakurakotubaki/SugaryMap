import 'package:sugary_map/service/export/global_export.dart';
import 'package:sugary_map/theme/appbar_theme.dart';
import 'package:sugary_map/theme/button_theme.dart';

class ShopCart extends StatefulWidget {
  const ShopCart({Key? key}) : super(key: key);

  @override
  State<ShopCart> createState() => _ShopCartState();
}

class _ShopCartState extends State<ShopCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('商品管理'),
        centerTitle: true,
        backgroundColor: MyAppBar.appBar.appColor,
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.redAccent,
          onPressed: () {
            showModalBottomSheet(
        context: context,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(10.0)),
        ),
        builder: (builder) {
          return Container(
            height: 800.0,
            color: Colors.transparent,
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: 30),
                  Text("商品カテゴリを作成"),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: MyButton.appButton.appColor),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text('お会計に進む'))
                ],
              ),
            ),
          );
        });
          },
          child: const Icon(Icons.add)),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[],
        ),
      ),
    );
  }
}
