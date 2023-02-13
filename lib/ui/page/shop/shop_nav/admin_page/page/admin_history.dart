import 'package:sugary_map/service/export/global_export.dart';
import 'package:sugary_map/theme/appbar_theme.dart';

class AdminHistory extends StatefulWidget {
  AdminHistory({Key? key}) : super(key: key);

  @override
  State<AdminHistory> createState() => _AdminHistoryState();
}

class _AdminHistoryState extends State<AdminHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('admin'),
    );
  }
}