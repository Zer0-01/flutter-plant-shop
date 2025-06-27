import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class NewServicesWidget extends StatelessWidget {
  const NewServicesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "NEW SERVICES",
                style: TextTheme.of(
                  context,
                ).titleMedium?.copyWith(fontWeight: FontWeight.bold),
              ),
              Text(
                "Recommended based on your preference",
                style: TextTheme.of(context).bodyMedium,
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              context.tabsRouter.setActiveIndex(1);
            },
            child: const Text("View All"),
          ),
        ],
      ),
    );
  }
}
