import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_data_flows/presentation/root/home/bloc/home_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

class CreditWidget extends StatelessWidget {
  const CreditWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Skeletonizer(
          enabled: _isLoading(state.fetchUserStatus),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                borderRadius: BorderRadius.circular(40),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: const BoxDecoration(
                        border: Border(right: BorderSide(width: 0.5)),
                      ),
                      child: Column(
                        children: [
                          const Skeleton.keep(child: Text("CREDIT")),
                          Text(
                            _isLoading(state.fetchUserStatus)
                                ? BoneMock.title
                                : "RM ${state.credit.toStringAsFixed(2)}",
                            style: Theme.of(context).textTheme.bodyMedium
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: const BoxDecoration(
                        border: Border(
                          left: BorderSide(width: 0.5),
                          right: BorderSide(width: 0.5),
                        ),
                      ),
                      child: Column(
                        children: [
                          const Skeleton.keep(child: Text("POINTS")),
                          Text(
                            _isLoading(state.fetchUserStatus)
                                ? BoneMock.title
                                : state.points.toString(),
                            style: Theme.of(context).textTheme.bodyMedium
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: const BoxDecoration(
                        border: Border(left: BorderSide(width: 0.5)),
                      ),
                      child: Column(
                        children: [
                          const Skeleton.keep(child: Text("PACKAGE")),
                          Text(
                            _isLoading(state.fetchUserStatus)
                                ? BoneMock.title
                                : state.package.toString(),
                            style: Theme.of(context).textTheme.bodyMedium
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  bool _isLoading(FetchUserStatus fetchUserStatus) {
    return fetchUserStatus == FetchUserStatus.loading;
  }
}
