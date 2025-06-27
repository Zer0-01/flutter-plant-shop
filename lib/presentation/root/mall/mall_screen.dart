import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_data_flows/presentation/root/mall/bloc/mall_bloc.dart';
import 'package:flutter_data_flows/presentation/root/mall/widgets/mall_app_bar_widget.dart';
import 'package:flutter_data_flows/presentation/root/mall/widgets/product_grid_widget.dart';

class MallScreen extends StatefulWidget {
  const MallScreen({super.key});

  @override
  State<MallScreen> createState() => _MallScreenState();
}

class _MallScreenState extends State<MallScreen> {
  @override
  void initState() {
    super.initState();
    context.read<MallBloc>().add(const OnInitMallEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surfaceContainer,
      appBar: const MallAppBarWidget(),
      body: const ProductGridWidget(),
    );
  }
}
