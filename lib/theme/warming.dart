import 'package:sugary_map/service/export/global_export.dart';

enum WarningColor {
  textColor(appColor: Colors.redAccent);

  const WarningColor({required this.appColor});
  final Color appColor;
}
