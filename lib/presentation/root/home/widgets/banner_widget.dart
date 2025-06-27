import 'package:flutter/material.dart';
import 'package:flutter_data_flows/utils/constants.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(ImagesConstant.IMAGE_BANNER);
  }
}
