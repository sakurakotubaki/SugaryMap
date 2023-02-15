import 'package:sugary_map/service/export/global_export.dart';
import 'package:sugary_map/theme/appbar_theme.dart';
import 'package:sugary_map/theme/button_theme.dart';
import 'package:sugary_map/ui/page/user/user_nav/post_page/add_post.dart';

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
        centerTitle: true,
        title: const Text('口コミ詳細'),
        backgroundColor: MyAppBar.appBar.appColor,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 40),
            Container(
              width: 200,
              height: 100,
              color: Colors.amber,
            ),
            const SizedBox(height: 20),
            Container(
              color: Colors.blueAccent,
              alignment: const Alignment(0.0, 0.0),
              width: 200,
              height: 50,
              child: Row(
                children: [
                  Text('投稿者'),
                  const SizedBox(width: 20),
                  Text('上田'),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Column(
              children: [
                Container(
                    alignment: const Alignment(-1.0, -1.0),
                    width: 200,
                    height: 100,
                    color: Colors.redAccent,
                    child: Text('ffffffffffff\nffffffffffff\nffffffffffff')),
                const SizedBox(height: 20),
                Container(
                    alignment: const Alignment(-1.0, -1.0),
                    width: 200,
                    height: 100,
                    color: Colors.pink,
                    child: Column(
                      children: [
                        Text('東京小山代'),
                        SizedBox(height: 20),
                        Text('090-9988-3477'),
                      ],
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
