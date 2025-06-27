import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_data_flows/config/app_color_theme.dart';
import 'package:flutter_data_flows/config/app_router.dart';

class App extends StatelessWidget {
  final _appRouter = AppRouter();

  App({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      light: AppColorTheme.light,
      dark: AppColorTheme.light,
      initial: AdaptiveThemeMode.light,
      overrideMode: AdaptiveThemeMode.light,
      builder: (light, dark) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: _appRouter.config(),
          theme: light,
          darkTheme: dark,
        );
      },
    );
  }
}
