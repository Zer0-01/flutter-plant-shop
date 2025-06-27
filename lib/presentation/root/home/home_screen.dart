import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_data_flows/presentation/root/home/bloc/home_bloc.dart';
import 'package:flutter_data_flows/presentation/root/home/widgets/banner_widget.dart';
import 'package:flutter_data_flows/presentation/root/home/widgets/categories_widget.dart';
import 'package:flutter_data_flows/presentation/root/home/widgets/feature_buttons.dart';
import 'package:flutter_data_flows/presentation/root/home/widgets/home_app_bar_widget.dart';
import 'package:flutter_data_flows/presentation/root/home/widgets/location_widget.dart';
import 'package:flutter_data_flows/presentation/root/home/widgets/new_services_widget.dart';
import 'package:flutter_data_flows/presentation/root/home/widgets/product_carousel_widget.dart';
import 'package:flutter_data_flows/presentation/root/home/widgets/shop_plants_widget.dart';
import 'package:flutter_data_flows/presentation/root/home/widgets/trending_discoveries_widget.dart';
import 'package:flutter_data_flows/presentation/root/home/widgets/user_detail_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    context.read<HomeBloc>().add(const OnInitHomeEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: const HomeAppBarWidget(),
      body: RefreshIndicator.adaptive(
        onRefresh: () async {
          context.read<HomeBloc>().add(const OnInitHomeEvent());
        },
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const UserDetailWidget(),
              const BannerWidget(),
              const FeatureButtons(),
              const CategoriesWidget(),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 16),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surfaceContainer,
                ),
                child: const Column(
                  spacing: 16,
                  children: [
                    NewServicesWidget(),
                    ProductCarouselWidget(),
                    ShopPlantsWidget(),
                  ],
                ),
              ),
              const TrendingDiscoveriesWidget(),
              LocationWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
