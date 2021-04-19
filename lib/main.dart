import 'package:ClinicApp/constants.dart';
import 'package:ClinicApp/screens/dashboard/dashboard_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ClinicApp());
}

class ClinicApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'OdontoPro',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primaryColor: opBlue,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: opBlack),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: DashboardScreen(),
    );
  }
}
