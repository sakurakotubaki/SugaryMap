import 'package:sugary_map/service/export/global_export.dart';
import 'package:sugary_map/ui/page/user/user_nav/cart_page/cart_page.dart';

class Reserevation extends StatefulWidget {
  const Reserevation({Key? key}) : super(key: key);

  static const routeName = 'reserevation';

  @override
  State<Reserevation> createState() => _ReserevationState();
}

class _ReserevationState extends State<Reserevation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('カート'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('予約が完了致しました', style: TextStyle(fontSize: 20)),
            const SizedBox(height: 50),
            ElevatedButton(
                style:
                    ElevatedButton.styleFrom(backgroundColor: Colors.black87),
                onPressed: () {
                  context.goNamed(CartPage.routeName);
                },
                child: const Text('カートに戻る')),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
