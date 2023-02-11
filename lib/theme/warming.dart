import 'package:sugary_map/service/export/global_export.dart';

enum WarmingColor {
  textColor(appColor: Colors.redAccent);

  const WarmingColor({required this.appColor});
  final Color appColor;
}
