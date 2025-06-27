import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_data_flows/presentation/root/account/account_screen.dart';

@RoutePage()
class AccountSetupScreen extends StatelessWidget {
  const AccountSetupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const AccountScreen();
  }
}
