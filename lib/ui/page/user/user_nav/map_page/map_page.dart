import 'package:sugary_map/service/export/global_export.dart';
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
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Add your onPressed code here!
        },
        label: const Text('自分の現在地を表示'),
        icon: const Icon(Icons.pin_drop),
        backgroundColor: Colors.amber[300],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextFormField(
                decoration: InputDecoration(
                    icon: Icon(Icons.search),
                    contentPadding: EdgeInsets.only(left: 20),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey)),
                    labelText: "店舗名を入力"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
