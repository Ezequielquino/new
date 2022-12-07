import 'package:app_gestion_camaroneras/app/ui/views/assignments_detail/assignments_detail_controller.dart';
import 'package:app_gestion_camaroneras/core/utils/constant.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

const double cameraZoom = 15.0; //17
const LatLng sourceLocation = LatLng(
  -12.050756,
  -77.047198,
);

class GoogleMaps extends StatefulWidget {
  const GoogleMaps({Key? key}) : super(key: key);

  @override
  State<GoogleMaps> createState() => _GoogleMapsState();
}

class _GoogleMapsState extends State<GoogleMaps> {
  CameraPosition initialCameraPosition = const CameraPosition(
    zoom: cameraZoom,
    target: sourceLocation,
  );

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AssignmentsDetailController>(
      builder: (controller) => Positioned(
        top: 0.0,
        left: 0.0,
        right: 0.0,
        bottom: 400.h, //305.h,
        child: GoogleMap(
          mapType: MapType.normal,
          myLocationEnabled: false,
          myLocationButtonEnabled: false,
          //compassEnabled: false,
          //tiltGesturesEnabled: true,
          /*  markers: controller.markers,
          polygons: controller.polygons,
          polylines: controller.polylines, */
          padding: EdgeInsets.only(bottom: 20.w),
          initialCameraPosition: initialCameraPosition,
          onMapCreated: (GoogleMapController ctrlGoogleMap) {
            ctrlGoogleMap.setMapStyle(kMapStyles);
            if (!controller.googleMapcontroller.isCompleted) {
              controller.googleMapcontroller.complete(ctrlGoogleMap);
            }
          },
          onTap: (point) {
            /* controller.polygonLatLngs.add(point);
            controller.setPolygon(); */
          },
        ),
      ),
    );
  }
}
