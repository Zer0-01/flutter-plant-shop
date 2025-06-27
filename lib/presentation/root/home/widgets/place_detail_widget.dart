import 'package:flutter/material.dart';

class PlaceDetailWidget extends StatelessWidget {
  final String placeName;

  const PlaceDetailWidget({super.key, required this.placeName});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 4,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          placeName,
          style: Theme.of(
            context,
          ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
        ),
        Row(
          spacing: 4,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(Icons.location_on),
            Expanded(
              child: Text(
                "10 Floor, Lorem Ipsum Mall, Jalan SS23 Lorem, Selangor Malaysia",
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.blue,
                ),
              ),
            ),
          ],
        ),
        const Row(
          spacing: 4,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.access_time_filled),
            Expanded(child: Text("10am - 11am")),
          ],
        ),
      ],
    );
  }
}
