import 'package:flutter/material.dart';
import 'package:flutter_data_flows/utils/constants.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> categories = [
      ImagesConstant.IMAGE_PLANT_1,
      ImagesConstant.IMAGE_PLANT_2,
      ImagesConstant.IMAGE_PLANT_3,
      ImagesConstant.IMAGE_PLANT_4,
      ImagesConstant.IMAGE_PLANT_5,
    ];
    return Container(
      color: Theme.of(context).colorScheme.surface,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            spacing: 8,
            children:
                categories
                    .map(
                      (category) => SizedBox(
                        width: WidthConstant.w20(context),
                        child: IconButton(
                          style: IconButton.styleFrom(
                            backgroundColor:
                                Theme.of(context).colorScheme.surfaceContainer,
                          ),
                          onPressed: () {},
                          icon: Image.asset(category),
                        ),
                      ),
                    )
                    .toList(),
          ),
        ),
      ),
    );
  }
}
