import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_data_flows/presentation/root/inbox/inbox_screen.dart';

@RoutePage()
class InboxSetupScreen extends StatelessWidget {
  const InboxSetupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const InboxScreen();
  }
}
