import 'package:flutter/material.dart';
import 'package:flutter_data_flows/utils/constants.dart';

class ShopPlantsWidget extends StatefulWidget {
  const ShopPlantsWidget({super.key});

  @override
  State<ShopPlantsWidget> createState() => _ShopPlantsWidgetState();
}

class _ShopPlantsWidgetState extends State<ShopPlantsWidget> {
  final ScrollController _scrollController = ScrollController();
  double _thumbPosition = 0.0;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (!_scrollController.hasClients) return;

    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;

    setState(() {
      _thumbPosition = maxScroll == 0 ? 0 : currentScroll / maxScroll;
    });
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final List<String> plants = [
      ImagesConstant.IMAGE_PLANT_1,
      ImagesConstant.IMAGE_PLANT_2,
      ImagesConstant.IMAGE_PLANT_3,
      ImagesConstant.IMAGE_PLANT_4,
      ImagesConstant.IMAGE_PLANT_5,
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8,
      children: [
        Row(
          spacing: 16,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Image.asset(
                ImagesConstant.IMAGE_SHOP_PLANTS,
                width: WidthConstant.w20(context),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                controller: _scrollController,
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: Row(
                    spacing: 8,
                    children:
                        plants
                            .map(
                              (plant) => SizedBox(
                                width: WidthConstant.w20(context),
                                child: IconButton(
                                  style: IconButton.styleFrom(
                                    backgroundColor:
                                        Theme.of(context).colorScheme.surface,
                                  ),
                                  onPressed: () {},
                                  icon: Image.asset(plant),
                                ),
                              ),
                            )
                            .toList(),
                  ),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: LayoutBuilder(
            builder: (context, constraints) {
              final trackWidth = constraints.maxWidth;
              final thumbWidth = 40.0;

              return Container(
                height: 4,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(2),
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 100),
                    width: thumbWidth,
                    margin: EdgeInsets.only(
                      left: _thumbPosition * (trackWidth - thumbWidth),
                    ),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
