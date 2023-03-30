import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:sugary_map/service/export/global_export.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static const routeName = 'HomePage';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // AppBar検索Form.
        title: Card(
          child: TextField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.search), hintText: '店舗を検索'),
            onChanged: (value) {},
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Text('自分の現在地を表示'),
        icon: const Icon(Icons.pin_drop),
        backgroundColor: Colors.amber[300],
      ),
      body: Center(
        child: Column(
          children: <Widget>[],
        ),
      ),
    );
  }
}
