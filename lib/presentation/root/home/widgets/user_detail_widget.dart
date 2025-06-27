import 'package:flutter/material.dart';
import 'package:flutter_data_flows/presentation/root/home/widgets/credit_widget.dart';
import 'package:flutter_data_flows/presentation/root/home/widgets/next_appointment_widget.dart';

class UserDetailWidget extends StatelessWidget {
  const UserDetailWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(color: Theme.of(context).colorScheme.primary),
      child: const Column(
        spacing: 8,
        children: [NextAppointmentWidget(), CreditWidget()],
      ),
    );
  }
}
