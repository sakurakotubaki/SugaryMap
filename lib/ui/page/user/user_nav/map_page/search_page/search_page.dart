import 'package:sugary_map/service/export/global_export.dart';
import 'package:sugary_map/ui/page/user/user_nav/post_page/add_post.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  static const routeName = 'searchPage';

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List posts = ["パティスリーニキ", "サロンドego", "フランス屋"];

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
