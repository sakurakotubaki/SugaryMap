import 'package:sugary_map/service/export/global_export.dart';
import 'package:sugary_map/ui/page/user/user_nav/post_page/add_post.dart';
import 'package:sugary_map/ui/page/user/user_nav/post_page/post_detail.dart';

class PostPage extends StatefulWidget {
  const PostPage({Key? key}) : super(key: key);

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('口コミ'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (() {
          context.goNamed(PostAdd.routeName);
        }),
        backgroundColor: Colors.black87,
        child: const Icon(Icons.add),
      ),
      // スクロールさせてOverFlowを解消する.
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 50),
              // Containerをタップすると詳細ページへ画面遷移する.
              GestureDetector(
                onTap: () {
                  GoRouter.of(context).go('/post/post_detail');
                },
                child: Container(
                  // 水平方向にContainerを寄せる.
                  // 左端にスペースを20.0空ける.
                  margin: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.grey,
                      ),
                      SizedBox(width: 20),
                      Column(
                        // Textを全て左端に寄せる設定.
                        crossAxisAlignment: CrossAxisAlignment.start,
                        verticalDirection: VerticalDirection.down,
                        children: [
                          Text('上田 2023/01/04'),
                          Text('称号 甘党'),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 350,
                height: 200,
                color: Colors.grey[200],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.file_upload_outlined)),
                  IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
                  TextButton(onPressed: () {}, child: Text('12')),
                ],
              ),
              Container(
                  alignment: Alignment(-0.7, -0.7),
                  child: Text('クラシックなフランス菓子を数多く扱う名店。\nおすすめは、ガトーピレネーです。')),
              SizedBox(height: 30),
              Container(
                // 水平方向にContainerを寄せる.
                // 左端にスペースを20.0空ける.
                margin: EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey,
                    ),
                    SizedBox(width: 20),
                    Column(
                      // Textを全て左端に寄せる設定.
                      crossAxisAlignment: CrossAxisAlignment.start,
                      verticalDirection: VerticalDirection.down,
                      children: [
                        Text('minn 2023/01/04'),
                        Text('称号 お菓子ライター'),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 350,
                height: 200,
                color: Colors.grey[200],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.file_upload_outlined)),
                  IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
                  TextButton(onPressed: () {}, child: Text('8')),
                ],
              ),
              Container(
                  alignment: Alignment(-0.7, -0.7),
                  child: Text('ざっくりとした食感のミルフィーユが、\n衝撃的な美味しさでした!')),
            ],
          ),
        ),
      ),
    );
  }
}
