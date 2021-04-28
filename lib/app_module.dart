import 'package:clinicapp/screens/auth/login_screen.dart';
import 'package:clinicapp/screens/dashboard/dashboard_screen.dart';
import 'package:clinicapp/services/appointment/appointment_controller.dart';
import 'package:clinicapp/services/auth/auth_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind((i) => AppointmentController()),
    Bind((i) => AuthController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, __) => DashboardScreen()),
    ChildRoute('/auth/login', child: (_, __) => LoginScreen()),
  ];
}
