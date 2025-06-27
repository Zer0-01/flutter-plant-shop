// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

class ImagesConstant {
  static const String IMAGE_PRODUCT = "assets/image_product.jpg";
  static const String IMAGE_SHOP_PLANTS = "assets/image_shop_plants.png";
  static const String IMAGE_PLANT_1 = "assets/image_plant_1.png";
  static const String IMAGE_PLANT_2 = "assets/image_plant_2.png";
  static const String IMAGE_PLANT_3 = "assets/image_plant_3.png";
  static const String IMAGE_PLANT_4 = "assets/image_plant_4.png";
  static const String IMAGE_PLANT_5 = "assets/image_plant_5.png";
  static const String IMAGE_TRENDING_DISCOVERIES =
      "assets/image_trending_discoveries.jpg";
  static const String IMAGE_BANNER = "assets/image_banner.jpg";
}

class WidthConstant {
  static double percent(BuildContext context, double percentage) {
    final screenWidth = MediaQuery.of(context).size.width;
    return screenWidth * (percentage / 100);
  }

  static double w5(BuildContext context) => percent(context, 5);
  static double w10(BuildContext context) => percent(context, 10);
  static double w15(BuildContext context) => percent(context, 15);
  static double w20(BuildContext context) => percent(context, 20);
  static double w25(BuildContext context) => percent(context, 25);
  static double w30(BuildContext context) => percent(context, 30);
  static double w35(BuildContext context) => percent(context, 35);
  static double w40(BuildContext context) => percent(context, 40);
  static double w45(BuildContext context) => percent(context, 45);
  static double w50(BuildContext context) => percent(context, 50);
  static double w55(BuildContext context) => percent(context, 55);
  static double w60(BuildContext context) => percent(context, 60);
  static double w65(BuildContext context) => percent(context, 65);
  static double w70(BuildContext context) => percent(context, 70);
  static double w75(BuildContext context) => percent(context, 75);
  static double w80(BuildContext context) => percent(context, 80);
  static double w85(BuildContext context) => percent(context, 85);
  static double w90(BuildContext context) => percent(context, 90);
  static double w95(BuildContext context) => percent(context, 95);
  static double w100(BuildContext context) => percent(context, 100);
}

class HeightConstant {
  static double percent(BuildContext context, double percentage) {
    final screenHeight = MediaQuery.of(context).size.height;
    return screenHeight * (percentage / 100);
  }

  static double h5(BuildContext context) => percent(context, 5);
  static double h10(BuildContext context) => percent(context, 10);
  static double h15(BuildContext context) => percent(context, 15);
  static double h20(BuildContext context) => percent(context, 20);
  static double h25(BuildContext context) => percent(context, 25);
  static double h30(BuildContext context) => percent(context, 30);
  static double h35(BuildContext context) => percent(context, 35);
  static double h40(BuildContext context) => percent(context, 40);
  static double h45(BuildContext context) => percent(context, 45);
  static double h50(BuildContext context) => percent(context, 50);
  static double h55(BuildContext context) => percent(context, 55);
  static double h60(BuildContext context) => percent(context, 60);
  static double h65(BuildContext context) => percent(context, 65);
  static double h70(BuildContext context) => percent(context, 70);
  static double h75(BuildContext context) => percent(context, 75);
  static double h80(BuildContext context) => percent(context, 80);
  static double h85(BuildContext context) => percent(context, 85);
  static double h90(BuildContext context) => percent(context, 90);
  static double h95(BuildContext context) => percent(context, 95);
  static double h100(BuildContext context) => percent(context, 100);
}
