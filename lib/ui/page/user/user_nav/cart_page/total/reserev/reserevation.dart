import 'package:sugary_map/service/export/global_export.dart';

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
        title: const Text('カート'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('予約が完了しました!'),
            ElevatedButton(
                onPressed: () {
                  context.go('/cart');
                },
                child: const Text('カートに戻る')),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
