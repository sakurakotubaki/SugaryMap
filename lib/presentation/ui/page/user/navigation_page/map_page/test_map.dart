import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sugary_map/presentation/export/global_export.dart';

class TestMap extends StatefulWidget {
  const TestMap({Key? key}) : super(key: key);

  static const rootName = 'testMap';

  @override
  _TestMapState createState() => _TestMapState();
}

class _TestMapState extends State<TestMap> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(35.122598002028525, 136.28274708246053);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: _center,
          zoom: 11.0,
        ),
      ),
    );
  }
}
