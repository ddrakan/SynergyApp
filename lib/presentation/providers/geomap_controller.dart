import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../utilities/map_style.dart';

class GeoMapController {

  void onMapCreated(GoogleMapController controller) {

    controller.setMapStyle(mapStyle);
  }

}