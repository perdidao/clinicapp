import 'package:clinicapp/constants.dart';
import 'package:clinicapp/screens/dashboard/components/upcoming_appointments_item.dart';
import 'package:flutter/material.dart';

class UpcomingAppointments extends StatelessWidget {
  const UpcomingAppointments({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(opSpacing),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          UpcomingAppointmentsItem(),
          UpcomingAppointmentsItem(),
          UpcomingAppointmentsItem(),
          UpcomingAppointmentsItem(),
          UpcomingAppointmentsItem(),
        ],
      ),
    );
  }
}
