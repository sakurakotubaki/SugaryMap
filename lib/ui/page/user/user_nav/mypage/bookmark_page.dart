import 'package:sugary_map/service/export/global_export.dart';
import 'package:sugary_map/theme/appbar_theme.dart';

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
        centerTitle: true,
        title: const Text('お気に入り'),
        backgroundColor: MyAppBar.appBar.appColor,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('お気に入り'),
          ],
        ),
      ),
    );
  }
}
