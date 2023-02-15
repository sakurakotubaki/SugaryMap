import 'package:sugary_map/service/export/global_export.dart';
import 'package:sugary_map/theme/appbar_theme.dart';
import 'package:sugary_map/theme/button_theme.dart';
import 'package:sugary_map/ui/page/user/user_nav/post_page/add_post.dart';

class PostPage extends StatefulWidget {
  const PostPage({Key? key}) : super(key: key);

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  List posts = ["パティスリーニキ", "サロンドego"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('口コミ'),
        backgroundColor: MyAppBar.appBar.appColor,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (() {
          context.goNamed(PostAdd.routeName);
        }),
        backgroundColor: MyButton.appButton.appColor,
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
                child: ListView.builder(
                    itemCount: posts.length,
                    itemBuilder: (BuildContext cotext, int index) {
                      final post = posts[index];
                      return ListTile(
                        onTap: (() {
                          GoRouter.of(context).go('/post/post_detail');
                        }),
                        title: Text(post),
                      );
                    })),
          ],
        ),
      ),
    );
  }
}
