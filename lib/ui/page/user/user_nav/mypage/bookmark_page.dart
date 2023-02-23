import 'package:sugary_map/service/export/global_export.dart';
import 'package:sugary_map/ui/page/user/user_nav/mypage/order/dummy_buy.dart';
import 'package:sugary_map/ui/page/user/user_nav/mypage/order/dummy_detail.dart';

class BookmarkPage extends StatefulWidget {
  const BookmarkPage({Key? key}) : super(key: key);

  static const routeName = 'BookmarkPage';

  @override
  State<BookmarkPage> createState() => _BookmarkPageState();
}

class _BookmarkPageState extends State<BookmarkPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('お気に入り'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 50),
            GestureDetector(
              onTap: () {
                GoRouter.of(context).goNamed(DummyDetail.routeName);
              },
              child: Row(
                children: [
                  Container(
                    // 水平方向にContainerを寄せる.
                    // 左端にスペースを20.0空ける.
                    margin: EdgeInsets.symmetric(horizontal: 20.0),
                    width: 100,
                    height: 100,
                    color: Colors.grey,
                  ),
                  SizedBox(width: 20),
                  Column(
                    // Textを全て左端に寄せる設定.
                    crossAxisAlignment: CrossAxisAlignment.start,
                    verticalDirection: VerticalDirection.down,
                    children: [
                      Text('パティスリーニキ'),
                      Row(
                        children: [
                          Text('休み'),
                          SizedBox(width: 10),
                          Text('月曜日'),
                          SizedBox(width: 10),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.favorite)),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Container(
                  // 水平方向にContainerを寄せる.
                  // 左端にスペースを20.0空ける.
                  margin: EdgeInsets.symmetric(horizontal: 20.0),
                  width: 100,
                  height: 100,
                  color: Colors.grey,
                ),
                SizedBox(width: 20),
                Column(
                  // Textを全て左端に寄せる設定.
                  crossAxisAlignment: CrossAxisAlignment.start,
                  verticalDirection: VerticalDirection.down,
                  children: [
                    Text('おやつやユー'),
                    Row(
                      children: [
                        Text('休み'),
                        SizedBox(width: 10),
                        Text('火曜日'),
                        SizedBox(width: 10),
                        IconButton(
                            onPressed: () {}, icon: const Icon(Icons.favorite)),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Container(
                  // 水平方向にContainerを寄せる.
                  // 左端にスペースを20.0空ける.
                  margin: EdgeInsets.symmetric(horizontal: 20.0),
                  width: 100,
                  height: 100,
                  color: Colors.grey,
                ),
                SizedBox(width: 20),
                Column(
                  // Textを全て左端に寄せる設定.
                  crossAxisAlignment: CrossAxisAlignment.start,
                  verticalDirection: VerticalDirection.down,
                  children: [
                    Text('パティスリーユウジ'),
                    Row(
                      children: [
                        Text('休み'),
                        SizedBox(width: 10),
                        Text('水曜日'),
                        SizedBox(width: 10),
                        IconButton(
                            onPressed: () {}, icon: const Icon(Icons.favorite)),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Container(
                  // 水平方向にContainerを寄せる.
                  // 左端にスペースを20.0空ける.
                  margin: EdgeInsets.symmetric(horizontal: 20.0),
                  width: 100,
                  height: 100,
                  color: Colors.grey,
                ),
                SizedBox(width: 20),
                Column(
                  // Textを全て左端に寄せる設定.
                  crossAxisAlignment: CrossAxisAlignment.start,
                  verticalDirection: VerticalDirection.down,
                  children: [
                    Text('ショコラトリームラタ'),
                    Row(
                      children: [
                        Text('休み'),
                        SizedBox(width: 10),
                        Text('不定休'),
                        SizedBox(width: 10),
                        IconButton(
                            onPressed: () {}, icon: const Icon(Icons.favorite)),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
