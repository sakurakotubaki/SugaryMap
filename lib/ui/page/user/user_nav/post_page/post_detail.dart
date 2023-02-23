import 'package:sugary_map/service/export/global_export.dart';

class PostDetail extends StatefulWidget {
  const PostDetail({Key? key}) : super(key: key);

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
              SizedBox(
                width: 300,
                height: 50,
                child: Row(
                  children: const [
                    Text('投稿者'),
                    SizedBox(width: 20),
                    Text('上田'),
                  ],
                ),
              ),
              SizedBox(
                width: 300,
                height: 50,
                child: Row(
                  children: const [
                    Text('いったお店'),
                    SizedBox(width: 20),
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
                      child:
                          const Text('クラシックなフランス菓子を数多く扱う名店。\nおすすめは、ガトピレネーです。')),
                  Container(
                      alignment: const Alignment(-1.0, -1.0),
                      width: 300,
                      height: 100,
                      child: Column(
                        // テキストを左端に寄せる.
                        crossAxisAlignment: CrossAxisAlignment.start,
                        verticalDirection: VerticalDirection.down,
                        children: const [
                          // TODO(kenta-wakasa): ここがURLのリンクになるのでは？
                          Text('東京都尾山台'),
                          SizedBox(height: 20),
                          // TODO(kenta-wakasa): 電話番号も入力しないはず。
                          Text('090-9988-3477'),
                        ],
                      )),
                ],
              ),
              // TODO(kenta-wakasa): これも表示できないはず
              Image.network(
                  'https://poi-static-map.cld.navitime.jp/02022/120998/image.png'),
            ],
          ),
        ),
      ),
    );
  }
}
