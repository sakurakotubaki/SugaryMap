import 'package:sugary_map/service/export/global_export.dart';
import 'package:sugary_map/theme/appbar_theme.dart';
import 'package:sugary_map/theme/button_theme.dart';
import 'package:sugary_map/theme/warming.dart';

class TotalPage extends StatefulWidget {
  const TotalPage({Key? key}) : super(key: key);
  @override
  State<TotalPage> createState() => _TotalPageState();
}

class _TotalPageState extends State<TotalPage> {
  List price = ["¥120", "¥120", "¥120"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('カート'),
        backgroundColor: MyAppBar.appBar.appColor,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Text('カートに商品が入っていません!',
            //     style: TextStyle(color: WarmingColor.textColor.appColor)),
            Expanded(
                child: ListView.builder(
                    itemCount: price.length,
                    itemBuilder: (BuildContext cotext, int index) {
                      final total = price[index];
                      return ListTile(
                        title: Text(total),
                      );
                    })),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: MyButton.appButton.appColor),
                onPressed: () {
                  context.go('/cart/total/reserve');
                },
                child: const Text('予約する')),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
