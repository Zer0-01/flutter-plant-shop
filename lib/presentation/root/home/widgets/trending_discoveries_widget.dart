import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_data_flows/presentation/root/home/bloc/home_bloc.dart';
import 'package:flutter_data_flows/presentation/root/home/widgets/product_card_widget.dart';
import 'package:flutter_data_flows/presentation/root/mall/bloc/mall_bloc.dart';
import 'package:flutter_data_flows/utils/constants.dart';
import 'package:skeletonizer/skeletonizer.dart';

class TrendingDiscoveriesWidget extends StatelessWidget {
  const TrendingDiscoveriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryFixedDim,
          ),
          child: Column(
            children: [
              Image.asset(
                ImagesConstant.IMAGE_TRENDING_DISCOVERIES,
                fit: BoxFit.fill,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 16.0,
                  right: 16,
                  bottom: 16,
                ),
                child: Skeletonizer(
                  enabled: _isLoading(state.fetchProductStatus),
                  child: GridView.builder(
                    padding: const EdgeInsets.all(8),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 0.75,
                          crossAxisSpacing: 8,
                          mainAxisSpacing: 8,
                        ),
                    itemCount:
                        _isLoading(state.fetchProductStatus)
                            ? 4
                            : state.products.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      final String image;
                      final String brand;
                      final String name;
                      final String price;
                      final String discount;
                      final String initialPrice;

                      if (_isLoading(state.fetchProductStatus)) {
                        image = BoneMock.title;
                        brand = BoneMock.title;
                        name = BoneMock.title;
                        price = "";
                        discount = "";
                        initialPrice = "";
                      } else {
                        final product = state.products[index];
                        image = product.image;
                        brand = product.brand;
                        name = product.name;
                        price = "";
                        discount = "";
                        initialPrice = "";
                      }

                      return ProductCardWidget(
                        image: image,
                        brand: brand,
                        name: name,
                        price: price,
                        discount: discount,
                        initialPrice: initialPrice,
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  bool _isLoading(FetchProductStatus fetchProductStatus) {
    return fetchProductStatus == FetchProductStatus.loading;
  }
}
