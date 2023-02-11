import 'package:sugary_map/service/export/global_export.dart';

enum MyText {
  textColor(appColor: Colors.white);

  const MyText({required this.appColor});
  final Color appColor;
}
