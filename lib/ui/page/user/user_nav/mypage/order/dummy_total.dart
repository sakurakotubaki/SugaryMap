import 'package:sugary_map/service/export/global_export.dart';

class DummyTotal extends StatefulWidget {
  const DummyTotal({Key? key}) : super(key: key);
  @override
  State<DummyTotal> createState() => _DummyTotalState();
}

class _DummyTotalState extends State<DummyTotal> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('お会計'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

          ],
        ),
      ),
    );
  }
}
