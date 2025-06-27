import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_data_flows/config/app_router.gr.dart';

class RootScreen extends StatelessWidget {
  const RootScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: [
        const HomeSetupRoute(),
        const MallSetupRoute(),
        const DiscoverSetupRoute(),
        const InboxSetupRoute(),
        const AccountSetupRoute(),
      ],
      bottomNavigationBuilder: (context, tabsRouter) {
        return BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          selectedItemColor: Theme.of(context).colorScheme.primary,
          unselectedItemColor: Theme.of(context).colorScheme.secondary,

          items: [
            const BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.store_outlined),
              label: 'Mall',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.lightbulb_outline),
              label: "Discover",
            ),
            const BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.bell),
              label: "Inbox",
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.people_outline),
              label: "Account",
            ),
          ],
        );
      },
    );
  }
}
