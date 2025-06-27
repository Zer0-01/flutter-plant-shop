import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_data_flows/presentation/root/home/bloc/home_bloc.dart';
import 'package:flutter_data_flows/presentation/root/home/widgets/product_card_widget.dart';
import 'package:flutter_data_flows/presentation/root/mall/bloc/mall_bloc.dart';
import 'package:flutter_data_flows/utils/constants.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ProductCarouselWidget extends StatelessWidget {
  const ProductCarouselWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Skeletonizer(
          enabled: _isLoading(state.fetchProductStatus),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Skeleton.replace(
                replacement: Row(
                  spacing: 8,
                  children:
                      List.generate(3, (index) {
                        return SizedBox(
                          width: WidthConstant.w40(context),
                          height: HeightConstant.h35(context),
                          child: ProductCardWidget(
                            image: BoneMock.title,
                            brand: BoneMock.title,
                            name: BoneMock.title,
                            price: BoneMock.title,
                            discount: BoneMock.title,
                            initialPrice: BoneMock.title,
                          ),
                        );
                      }).toList(),
                ),
                child: Row(
                  spacing: 8,
                  children:
                      state.products.map((product) {
                        String image = product.image;
                        String brand = product.brand;
                        String name = product.name;
                        String price = product.price.toStringAsFixed(2);
                        String discount = "";
                        String initialPrice = "";

                        return SizedBox(
                          width: WidthConstant.w40(context),
                          height: HeightConstant.h35(context),
                          child: ProductCardWidget(
                            image: image,
                            brand: brand,
                            name: name,
                            price: price,
                            discount: discount,
                            initialPrice: initialPrice,
                          ),
                        );
                      }).toList(),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  bool _isLoading(FetchProductStatus fetchProductStatus) {
    return fetchProductStatus == FetchProductStatus.loading;
  }
}
