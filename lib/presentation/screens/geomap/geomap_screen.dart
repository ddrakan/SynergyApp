import 'dart:ui';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:google_maps_flutter_platform_interface/google_maps_flutter_platform_interface.dart';
import 'package:intl/intl.dart';
import 'package:app/presentation/providers/geomap_controller.dart';

class GoogleMapsScreen extends StatefulWidget {


  static const String name = 'geomap_screen';

  const GoogleMapsScreen({super.key});

  @override
  State<GoogleMapsScreen> createState() => _GoogleMapsScreenState();
}

class _GoogleMapsScreenState extends State<GoogleMapsScreen> {

  //Meedu
  final _controller = GeoMapController();

  //
  Completer<GoogleMapController> googleMapController = Completer();
  List<LatLng> posiciones = [];
  Set<Polyline> polylines = {};
  Set<Marker> markers = {};
  CameraPosition initialCameraPosition = const CameraPosition(
    zoom: 13,
    target: LatLng(-17.3786, -66.1216),
  );
  late BitmapDescriptor markerTruck;

  @override
  void initState() {
    super.initState();
    initData();
  }

  Future<void> initData() async {
    posiciones.addAll(
      [
        const LatLng(-17.3786, -66.1216), //SAC
        const LatLng(-17.3936, -66.1704), //BG1
        const LatLng(-17.3930, -66.1956), //BG2
        const LatLng(-17.3786, -66.1126),
      ],
    );
    await setIcon();
    setMarkers();
    setPolylines();
  }

  Future<Uint8List> getBytesFromAsset(String path, double devicePixelRatio, int width) async {
    ByteData data = await rootBundle.load(path);
    Codec codec = await instantiateImageCodec(data.buffer.asUint8List(), targetWidth: width);
    FrameInfo fi = await codec.getNextFrame();
    return (await fi.image.toByteData(format: ImageByteFormat.png))!.buffer.asUint8List();
  }


  Future<void> setIcon() async {
    Uint8List? iconBytes = await getBytesFromAsset('assets/images/markertruck.png', 10 ,70);
    markerTruck = BitmapDescriptor.fromBytes(iconBytes);
  }

  void setMarkers() {
    for (var posicion in posiciones) {
      markers.add(
        Marker(
          markerId: MarkerId(posicion.toString()),
          position: posicion,
          icon: markerTruck,
          infoWindow: InfoWindow(
            title: DateFormat('dd/MM/yyyy hh:mm a').format(DateTime.now()),
          ),
        ),
      );
    }
    setState(() {});
  }

  void setPolylines() {
    polylines.add(
      Polyline(
        polylineId: const PolylineId('id'),
        points: posiciones,
        width: 4,
        color: Colors.blueAccent,
      ),
    );
    moverCamara(posiciones.last);
    setState(() {});
  }

  void addMarker(LatLng nuevaPosicion) {
    LatLng ultimaPosicion = markers.last.position;
    markers.add(
      Marker(
        markerId: MarkerId(nuevaPosicion.toString()),
        position: nuevaPosicion,
        icon: markerTruck,
        infoWindow: InfoWindow(
          title: DateFormat('dd/MM/yyyy hh:mm a').format(DateTime.now()),
        ),
      ),
    );
    polylines.add(
      Polyline(
        polylineId: PolylineId(nuevaPosicion.toString()),
        points: [ultimaPosicion, nuevaPosicion],
        width: 4,
        color: Colors.green,
        patterns: [
          PatternItem.dot,
          PatternItem.gap(10),
        ],
      ),
    );
    moverCamara(nuevaPosicion);
    setState(() {});
  }

  Future<void> moverCamara(LatLng posicion) async {
    final controller = await googleMapController.future;
    controller.animateCamera(CameraUpdate.newLatLng(posicion));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Regional Cochabamba'),
      ),
      body: SafeArea(
        child: GoogleMap(
          markers: markers,
          polylines: polylines,
          // mapType: MapType.normal,
          initialCameraPosition: initialCameraPosition,
          onMapCreated: _controller.onMapCreated, //meedu
          //    (GoogleMapController controller) {
          //   googleMapController.complete(controller);
          // },
          myLocationButtonEnabled: true,
          myLocationEnabled: true,
          onTap: (LatLng posicion) {
            addMarker(posicion);
          },
        ),
      ),
    );
  }
}
