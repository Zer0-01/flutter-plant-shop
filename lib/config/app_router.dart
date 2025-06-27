import 'package:auto_route/auto_route.dart';
import 'package:flutter_data_flows/config/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      page: RootSetupRoute.page,
      initial: true,
      children: [
        AutoRoute(page: HomeSetupRoute.page, initial: true),
        AutoRoute(page: MallSetupRoute.page),
        AutoRoute(page: DiscoverSetupRoute.page),
        AutoRoute(page: InboxSetupRoute.page),
        AutoRoute(page: AccountSetupRoute.page),
      ],
    ),
  ];
}
