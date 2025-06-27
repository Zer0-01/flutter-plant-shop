import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_data_flows/presentation/root/home/widgets/place_detail_widget.dart';
import 'package:flutter_data_flows/utils/constants.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LocationWidget extends StatelessWidget {
  LocationWidget({super.key});

  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.surface,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          spacing: 16,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              spacing: 8,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Location",
                  style: Theme.of(
                    context,
                  ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: HeightConstant.h30(context),
                  child: GestureDetector(
                    onVerticalDragDown: (details) {},
                    child: GoogleMap(
                      initialCameraPosition: _kGooglePlex,
                      onMapCreated: (GoogleMapController controller) {
                        _controller.complete(controller);
                      },
                      gestureRecognizers: {
                        Factory<OneSequenceGestureRecognizer>(
                          () => EagerGestureRecognizer(),
                        ),
                      },
                    ),
                  ),
                ),
              ],
            ),
            const PlaceDetailWidget(placeName: "Sunway Pyramid"),

            const PlaceDetailWidget(placeName: "The Gardens Mall"),
          ],
        ),
      ),
    );
  }
}
