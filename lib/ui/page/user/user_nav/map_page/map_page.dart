import 'package:sugary_map/service/export/global_export.dart';
import 'package:sugary_map/theme/appbar_theme.dart';
import 'package:sugary_map/theme/button_theme.dart';

class MapPage extends StatefulWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
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
        centerTitle: true,
        backgroundColor: MyAppBar.appBar.appColor,
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
