import 'package:flutter_modular/flutter_modular.dart';
import 'package:clinicapp/constants.dart';
import 'package:clinicapp/screens/dashboard/dashboard_screen.dart';
import 'package:flutter/material.dart';

import 'app_module.dart';
import 'dao_factory.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await DaoFactory.init();

  runApp(
    ModularApp(
      module: AppModule(),
      child: ClinicApp(),
    ),
  );
}

class ClinicApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      title: 'OdontoPro',
      theme: ThemeData(
        scaffoldBackgroundColor: opWashedWhite,
        primaryColor: opHighlight,
        textTheme: Theme.of(context).textTheme.apply(
              fontFamily: 'Apercu',
              bodyColor: opDarkGray,
            ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: DashboardScreen(),
    ).modular();
  }
}
