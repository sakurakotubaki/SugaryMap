import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sugary_map/service/export/global_export.dart';
import 'package:sugary_map/theme/appbar_theme.dart';
import 'package:sugary_map/theme/button_theme.dart';
import 'package:sugary_map/ui/page/user/user_nav/post_page/add_post.dart';

class DummyDetail extends StatefulWidget {
  const DummyDetail({Key? key}) : super(key: key);

  @override
  State<DummyDetail> createState() => _DummyDetailState();
}

class _DummyDetailState extends State<DummyDetail> {
  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('お店詳細'),
        backgroundColor: MyAppBar.appBar.appColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 40),
            SizedBox(
              height: 100,
              child: PageView(
                controller: controller,
                children: [
                  Center(
                    child: Container(
                      width: 200,
                      height: 200,
                      child: Image.network(
                          'https://tk.ismcdn.jp/mwimgs/9/3/1200w/img_93c4c275db491ec37e73e19b8b1442db388996.jpg'),
                    ),
                  ),
                  Center(
                    child: Container(
                      width: 200,
                      height: 200,
                      child: Image.network(
                          'https://tk.ismcdn.jp/mwimgs/9/3/1200w/img_93c4c275db491ec37e73e19b8b1442db388996.jpg'),
                    ),
                  ),
                  Center(
                    child: Container(
                      width: 200,
                      height: 200,
                      child: Image.network(
                          'https://tk.ismcdn.jp/mwimgs/9/3/1200w/img_93c4c275db491ec37e73e19b8b1442db388996.jpg'),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 50),
            Container(
                alignment: Alignment(-1.0, -1.0),
                width: 300,
                child: Text('パティスリーにき')),
            SizedBox(height: 20),
            Center(
              child: Container(
                width: 300,
                child: Text('完成な住宅街にある名店。看板商品はほろ苦いシブースト。'),
              ),
            ),
            SizedBox(height: 20),
            Container(
                alignment: Alignment(-1.0, -1.0),
                width: 300,
                child: Text('ホームページのURL\nhttps://aubonviewxtemps.jp/')),
            SizedBox(height: 20),
            Container(
                alignment: Alignment(-1.0, -1.0),
                width: 300,
                child: Text('SNSリンク')),
            SizedBox(height: 20),
            Container(
              width: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: FaIcon(
                        FontAwesomeIcons.twitter,
                        color: Colors.blue[300],
                      )),
                  SizedBox(width: 50),
                  IconButton(
                      onPressed: () {},
                      icon: FaIcon(
                        FontAwesomeIcons.facebook,
                        color: Colors.blue[800],
                      )),
                  SizedBox(width: 50),
                  IconButton(
                      onPressed: () {},
                      icon: FaIcon(
                        FontAwesomeIcons.instagram,
                        color: Colors.black54,
                      )),
                ],
              ),
            ),
            SizedBox(height: 30),
            Container(
              width: 300,
              child: Text('東京都尾山台'),
            ),
            SizedBox(height: 20),
            Container(
              width: 300,
              child: Text('TEL 09033775567'),
            ),
            SizedBox(height: 50),
            Image.network(
                'https://poi-static-map.cld.navitime.jp/02022/120998/image.png'),
            SizedBox(height: 50),
            GestureDetector(
              onTap: () {
                GoRouter.of(context).go('/mypage/bookmark/dummy_detail/dummy_buy');
              },
              child: Container(
                // 水平方向にContainerを寄せる.
                margin: EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  // グレーの正方形を上に寄せる設定.
                  crossAxisAlignment: CrossAxisAlignment.start,
                  verticalDirection: VerticalDirection.down,
                  children: [
                    Column(
                      // Textを全て左端に寄せる設定.
                      crossAxisAlignment: CrossAxisAlignment.start,
                      verticalDirection: VerticalDirection.down,
                      children: [
                        Text('ショートケーキ５号'),
                        SizedBox(height: 10),
                        Text('直径15cm、4~6人分、\n茨城いちごとコクのある\n47%の生クリームのケーキ'),
                        SizedBox(height: 10),
                        Text('キャンセル可能日3日前まで'),
                        SizedBox(height: 10),
                        Text('残り8'),
                        SizedBox(height: 10),
                        Text('¥3200'),
                      ],
                    ),
                    SizedBox(width: 20),
                    Container(
                        margin: const EdgeInsets.only(top: 1.0, right: 1.0),
                        width: 100,
                        height: 100,
                        color: Colors.grey),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              // 水平方向にContainerを寄せる.
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                // グレーの正方形を上に寄せる設定.
                crossAxisAlignment: CrossAxisAlignment.start,
                verticalDirection: VerticalDirection.down,
                children: [
                  Column(
                    // Textを全て左端に寄せる設定.
                    crossAxisAlignment: CrossAxisAlignment.start,
                    verticalDirection: VerticalDirection.down,
                    children: [
                      Text('ショートケーキ4号'),
                      SizedBox(height: 10),
                      Text('直径12cm、2~4人分、\n茨城いちごとコクのある\n47%の生クリームのケーキ'),
                      SizedBox(height: 10),
                      Text('キャンセル可能日3日前まで'),
                      SizedBox(height: 10),
                      Text('残り3'),
                      SizedBox(height: 10),
                      Text('¥2400'),
                    ],
                  ),
                  SizedBox(width: 20),
                  Container(
                      margin: const EdgeInsets.only(top: 1.0, right: 1.0),
                      width: 100,
                      height: 100,
                      color: Colors.grey),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              // 水平方向にContainerを寄せる.
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                // グレーの正方形を上に寄せる設定.
                crossAxisAlignment: CrossAxisAlignment.start,
                verticalDirection: VerticalDirection.down,
                children: [
                  Column(
                    // Textを全て左端に寄せる設定.
                    crossAxisAlignment: CrossAxisAlignment.start,
                    verticalDirection: VerticalDirection.down,
                    children: [
                      Text('ガトーショコラ4号'),
                      SizedBox(height: 10),
                      Text('直径12cm、2~4人分、\nフランス産ダークチョコを\n使用。リッチな味わい'),
                      SizedBox(height: 10),
                      Text('キャンセル可能日3日前まで'),
                      SizedBox(height: 10),
                      Text('残り2'),
                      SizedBox(height: 10),
                      Text('¥2500'),
                    ],
                  ),
                  SizedBox(width: 20),
                  Container(
                      margin: const EdgeInsets.only(top: 1.0, right: 1.0),
                      width: 100,
                      height: 100,
                      color: Colors.grey),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
