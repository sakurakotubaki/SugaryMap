import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:sugary_map/service/export/global_export.dart';
import 'package:sugary_map/service/router/router.dart';

// void main() {
//   runApp(const MyApp());
// }
void main() => runApp(
  DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => MyApp(),
  ),
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
      // DevicePreviewの設定.
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      // ここまで....
      title: 'Sugary Map',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
    );
  }
}
