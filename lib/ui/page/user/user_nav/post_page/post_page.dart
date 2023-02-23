import 'package:sugary_map/service/export/global_export.dart';
import 'package:sugary_map/ui/page/user/user_nav/post_page/add_post.dart';

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
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 50),
                GestureDetector(
                  // Containerをタップすると詳細ページへ画面遷移する.
                  onTap: () {
                    GoRouter.of(context).go('/post/post_detail');
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // 水平方向にContainerを寄せる.
                        // 左端にスペースを20.0空ける.

                        child: Row(
                          children: [
                            const CircleAvatar(
                              backgroundColor: Colors.grey,
                            ),
                            const SizedBox(width: 20),
                            Column(
                              // Textを全て左端に寄せる設定.
                              crossAxisAlignment: CrossAxisAlignment.start,
                              verticalDirection: VerticalDirection.down,
                              children: const [
                                Text('上田 2023/01/04'),
                                Text('称号 甘党'),
                              ],
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        width: 350,
                        height: 200,
                        color: Colors.grey[200],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.file_upload_outlined)),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.favorite)),
                          TextButton(onPressed: () {}, child: const Text('12')),
                        ],
                      ),
                      const Text('クラシックなフランス菓子を数多く扱う名店。\nおすすめは、ガトーピレネーです。'),
                    ],
                  ),
                ),
                // TODO(kenta-wakasa): 上のWidgetと下のWidgetを見比べてよく復習してください。
                const SizedBox(height: 30),
                Container(
                  // 水平方向にContainerを寄せる.
                  // 左端にスペースを20.0空ける.
                  margin: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    children: [
                      const CircleAvatar(
                        backgroundColor: Colors.grey,
                      ),
                      const SizedBox(width: 20),
                      Column(
                        // Textを全て左端に寄せる設定.
                        crossAxisAlignment: CrossAxisAlignment.start,
                        verticalDirection: VerticalDirection.down,
                        children: const [
                          Text('minn 2023/01/04'),
                          Text('称号 お菓子ライター'),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  width: 350,
                  height: 200,
                  color: Colors.grey[200],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.file_upload_outlined)),
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.favorite)),
                    TextButton(onPressed: () {}, child: const Text('8')),
                  ],
                ),
                Container(
                    alignment: const Alignment(-0.7, -0.7),
                    child: const Text('ざっくりとした食感のミルフィーユが、\n衝撃的な美味しさでした!')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
