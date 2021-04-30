import 'package:flutter/material.dart';
import 'package:clinicapp/constants.dart';
import 'package:flutter_modular/flutter_modular.dart';
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
            UpcomingAppointments(),
            Padding(
              padding: EdgeInsets.all(opSpacing),
              child: ElevatedButton(
                onPressed: () => Modular.to.navigate('/patients'),
                child: Container(
                  width: double.infinity,
                  child: Text(
                    'Meus pacientes',
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
