import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_data_flows/data/repository/product_repository.dart';
import 'package:flutter_data_flows/presentation/root/mall/bloc/mall_bloc.dart';
import 'package:flutter_data_flows/presentation/root/mall/mall_screen.dart';

@RoutePage()
class MallSetupScreen extends StatelessWidget {
  const MallSetupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MallBloc(productRepository: ProductRepository()),
      child: const MallScreen(),
    );
  }
}
