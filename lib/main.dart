import 'package:sugary_map/service/export/global_export.dart';
import 'package:sugary_map/service/router/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
      title: 'Sugary Map',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
