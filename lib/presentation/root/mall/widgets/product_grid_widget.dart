import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_data_flows/presentation/root/home/widgets/product_card_widget.dart';
import 'package:flutter_data_flows/presentation/root/mall/bloc/mall_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ProductGridWidget extends StatelessWidget {
  const ProductGridWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MallBloc, MallState>(
      builder: (context, state) {
        return RefreshIndicator.adaptive(
          onRefresh: () async {
            context.read<MallBloc>().add(const OnInitMallEvent());
          },
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Skeletonizer(
              enabled: _isLoading(state.status),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 3 / 5,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                ),

                itemCount: _isLoading(state.status) ? 4 : state.products.length,
                itemBuilder: (context, index) {
                  if (_isLoading(state.status)) {
                    return ProductCardWidget(
                      image: BoneMock.title,
                      name: BoneMock.title,
                      brand: BoneMock.title,
                      price: BoneMock.title,
                      discount: "",
                      initialPrice: "",
                    );
                  }

                  final product = state.products[index];
                  final image = product.image;
                  final name = product.name;
                  final brand = product.brand;
                  String initialPrice = "";
                  String price = "";
                  String discount = "";

                  if (product.discount == null) {
                    price = product.price.toStringAsFixed(2);
                  } else {
                    initialPrice = product.price.toStringAsFixed(2);
                    discount = product.discount.toString();
                    price = (product.price -
                            (product.discount ?? 0 / 100 * product.price))
                        .toStringAsFixed(2);
                  }

                  return ProductCardWidget(
                    image: image,
                    name: name,
                    brand: brand,
                    price: price,
                    discount: discount,
                    initialPrice: initialPrice,
                  );
                },
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
