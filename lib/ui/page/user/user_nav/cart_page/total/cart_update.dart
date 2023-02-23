import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:sugary_map/service/export/global_export.dart';
import 'package:sugary_map/ui/page/user/user_nav/post_page/add_post.dart';

class CartUpdate extends StatefulWidget {
  const CartUpdate({Key? key}) : super(key: key);

  @override
  State<CartUpdate> createState() => _CartUpdateState();
}

class _CartUpdateState extends State<CartUpdate> {
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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('予約を更新する'),
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
              alignment: const Alignment(-1.0, -1.0),
              width: 350,
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
            const SizedBox(height: 40),
            Container(
              width: 200,
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.delete,
                        color: Colors.redAccent,
                      )),
                  const SizedBox(width: 20),
                  const Text('商品を削除'),
                ],
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {},
                child: const Text('カートを更新する')),
          ],
        ),
      ),
    );
  }
}
