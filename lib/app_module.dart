import 'package:clinicapp/screens/dashboard/dashboard_screen.dart';
import 'package:clinicapp/services/appointment/appointment_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind((i) => AppointmentController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, __) => DashboardScreen())
  ];
}
