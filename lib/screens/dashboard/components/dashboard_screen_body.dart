import 'package:clinicapp/screens/dashboard/components/greeting.dart';
import 'package:clinicapp/screens/dashboard/components/upcoming_appointments.dart';
import 'package:flutter/material.dart';

class DashboardScreenBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Greeting(),
          UpcomingAppointments(),
        ],
      ),
    );
  }
}
