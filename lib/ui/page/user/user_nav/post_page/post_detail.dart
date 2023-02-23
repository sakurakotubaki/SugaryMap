import 'package:sugary_map/service/export/global_export.dart';
import 'package:sugary_map/ui/page/user/user_nav/post_page/add_post.dart';

class PostDetail extends StatefulWidget {
  const PostDetail({Key? key}) : super(key: key);

  static const routeName = 'postDetail';

  @override
  State<PostDetail> createState() => _PostDetailState();
}

class _PostDetailState extends State<PostDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('口コミ詳細'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 40),
              Container(
                width: 300,
                height: 150,
                color: Colors.grey[200],
              ),
              Container(
                width: 300,
                height: 50,
                child: Row(
                  children: [
                    Text('投稿者'),
                    const SizedBox(width: 20),
                    Text('上田'),
                  ],
                ),
              ),
              Container(
                width: 300,
                height: 50,
                child: Row(
                  children: [
                    Text('いったお店'),
                    const SizedBox(width: 20),
                    Text('オーボン・ビュータン'),
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                      alignment: const Alignment(-1.0, -1.0),
                      width: 300,
                      height: 100,
                      child: Text('クラシックなフランス菓子を数多く扱う名店。\nおすすめは、ガトピレネーです。')),
                  Container(
                      alignment: const Alignment(-1.0, -1.0),
                      width: 300,
                      height: 100,
                      child: Column(
                        // テキストを左端に寄せる.
                        crossAxisAlignment: CrossAxisAlignment.start,
                        verticalDirection: VerticalDirection.down,
                        children: [
                          Text('東京都尾山台'),
                          SizedBox(height: 20),
                          Text('090-9988-3477'),
                        ],
                      )),
                ],
              ),
              Image.network(
                  'https://poi-static-map.cld.navitime.jp/02022/120998/image.png'),
            ],
          ),
        ),
      ),
    );
  }
}
