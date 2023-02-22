import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:sugary_map/service/export/global_export.dart';
import 'package:sugary_map/ui/page/user/user_nav/post_page/add_post.dart';

class ShopReservation extends StatefulWidget {
  const ShopReservation({Key? key}) : super(key: key);

  @override
  State<ShopReservation> createState() => _ShopReservationState();
}

class _ShopReservationState extends State<ShopReservation> {
  int counter = 0;

  void decrement() {
    setState(() {
      counter--;
    });
  }

  void increment() {
    setState(() {
      counter++;
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    decrement();
    increment();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('予約する'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 50),
            Container(
              color: Colors.amber,
              width: 300,
            ),
            Container(width: 300, child: Text('ショートケーキ５号')),
            SizedBox(height: 20),
            Container(
                width: 300,
                child: Text('直径15cm、４〜６人分です。フルーツがいっぱいのっている贅沢なケーキです。')),
            SizedBox(height: 20),
            Container(
              width: 300,
              child: Row(
                children: [
                  TextButton(
                      onPressed: () {
                        decrement();
                      },
                      child: const Text('-', style: TextStyle(fontSize: 20))),
                  const SizedBox(width: 10),
                  Text(counter.toString()),
                  const SizedBox(width: 10),
                  TextButton(
                      onPressed: () {
                        increment();
                      },
                      child: const Text('+', style: TextStyle(fontSize: 20))),
                ],
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {},
                child: const Text('カートに追加する')),
          ],
        ),
      ),
    );
  }
}
