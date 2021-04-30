import 'package:clinicapp/constants.dart';
import 'package:clinicapp/screens/dashboard/components/upcoming_appointments_item.dart';
import 'package:clinicapp/services/appointment/appointment.dart';
import 'package:clinicapp/services/appointment/appointment_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class UpcomingAppointments extends StatelessWidget {
  const UpcomingAppointments({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppointmentController appointmentController = Modular.get();

    return Observer(
        name: 'UpcomingAppointmentsObserver',
        builder: (context) {
          if (appointmentController.isLoading)
            return CircularProgressIndicator();

          if (appointmentController.appointments.length == 0)
            return Text('Nenhuma consulta agendada');

          return Container(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(opSpacing),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  listAppointmentItems(appointmentController.appointments)
                ],
              ),
            ),
          );
        });
  }
}

Widget listAppointmentItems(List<Appointment> appointments) {
  return Row(
    children: appointments
        .map((item) => UpcomingAppointmentsItem(
              appointment: item,
            ))
        .toList(),
  );
}
