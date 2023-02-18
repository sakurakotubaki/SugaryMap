import 'package:flutter_carousel_slider/carousel_slider.dart';
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
      body: Column(
        children: <Widget>[
          Expanded(
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
        ],
      ),
    );
  }
}
