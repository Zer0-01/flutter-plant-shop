import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_data_flows/data/repository/product_repository.dart';
import 'package:flutter_data_flows/data/repository/user_repository.dart';
import 'package:flutter_data_flows/presentation/root/home/bloc/home_bloc.dart';
import 'package:flutter_data_flows/presentation/root/home/home_screen.dart';

@RoutePage()
class HomeSetupScreen extends StatelessWidget {
  const HomeSetupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (context) => HomeBloc(
            productRepository: ProductRepository(),
            userRepository: UserRepository(),
          ),
      child: const HomeScreen(),
    );
  }
}
