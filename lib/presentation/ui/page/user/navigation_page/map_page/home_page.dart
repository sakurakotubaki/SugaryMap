import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:sugary_map/presentation/export/global_export.dart';
import 'package:sugary_map/presentation/ui/page/user/navigation_page/map_page/test_map.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static const routeName = '/homePage';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          // AppBar検索Form.
          // title: GestureDetector(
          //   onTap: () {
          //     print('Tab Call');
          //   },
          //   child: Card(
          //     child: TextField(
          //       decoration: const InputDecoration(
          //           prefixIcon: Icon(Icons.search), hintText: '店舗を検索'),
          //     ),
          //   ),
          // ),
          ),
      body: Center(
        child: Column(
          children: [
            TextButton(
                onPressed: () {
                  context.goNamed(TestMap.rootName);
                },
                child: Text('show test'))
          ],
        ),
      ),
    );
  }
}
