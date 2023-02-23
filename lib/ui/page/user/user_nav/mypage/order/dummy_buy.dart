import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:sugary_map/service/export/global_export.dart';
import 'package:sugary_map/ui/page/user/user_nav/post_page/add_post.dart';

class DummyBuy extends StatefulWidget {
  const DummyBuy({Key? key}) : super(key: key);

  @override
  State<DummyBuy> createState() => _DummyBuyState();
}

class _DummyBuyState extends State<DummyBuy> {
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
        title: const Text('予約する'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 20),
              Container(
                color: Colors.grey,
                width: 300,
                height: 150,
              ),
              SizedBox(height: 10),
              Container(width: 300, child: Text('ショートケーキ５号')),
              SizedBox(height: 10),
              Container(
                  width: 300,
                  child: Text('直径15cm、４〜６人分です。フルーツがいっぱいのっている贅沢なケーキです。')),
              SizedBox(height: 20),
              Container(
                width: 300,
                child: TextFormField(
                  maxLines: 5,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                      hintText:
                          "(例)食物アレルギーでキゥイがダメ、メッセージプレートの内容が、英語でHappy Birthday",
                      border: OutlineInputBorder()),
                ),
              ),
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
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.black87),
                  onPressed: () {},
                  child: const Text('カートに追加する')),
            ],
          ),
        ),
      ),
    );
  }
}
