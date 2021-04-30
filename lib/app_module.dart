import 'package:clinicapp/screens/dashboard/dashboard_screen.dart';
import 'package:clinicapp/screens/patient/new_patient_screen.dart';
import 'package:clinicapp/screens/patient/patients_screen.dart';
import 'package:clinicapp/services/appointment/appointment_controller.dart';
import 'package:clinicapp/services/patient/patient_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind((i) => AppointmentController()),
    Bind((i) => PatientController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, __) => DashboardScreen()),
    ChildRoute('/patients', child: (_, __) => PatientsScreen()),
    ChildRoute('/patients/add', child: (_, __) => NewPatientScreen()),
  ];
}
