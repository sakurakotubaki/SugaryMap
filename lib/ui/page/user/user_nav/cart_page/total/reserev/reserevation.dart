import 'package:sugary_map/service/export/global_export.dart';
import 'package:sugary_map/theme/appbar_theme.dart';
import 'package:sugary_map/theme/button_theme.dart';
import 'package:sugary_map/theme/warming.dart';

class Reserevation extends StatefulWidget {
  const Reserevation({Key? key}) : super(key: key);
  @override
  State<Reserevation> createState() => _ReserevationState();
}

class _ReserevationState extends State<Reserevation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('カート'),
        backgroundColor: MyAppBar.appBar.appColor,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('予約が完了しました!'),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: MyButton.appButton.appColor),
                onPressed: () {
                  context.go('/cart');
                },
                child: Text('カートに戻る')),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
