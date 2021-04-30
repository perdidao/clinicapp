import 'package:flutter/material.dart';
import 'package:clinicapp/constants.dart';
import 'components/greeting.dart';
import 'components/upcoming_appointments.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Greeting(),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: opSpacing,
                vertical: opSpacing / 2,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Próximas consultas',
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Nova consulta',
                    ),
                  ),
                ],
              ),
            ),
            UpcomingAppointments(),
          ],
        ),
      ),
    );
  }
}
