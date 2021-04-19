import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'OdontoPro',
          style: TextStyle(
            fontFamily: 'Apercu',
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
      ),
      body: Center(
        child: SvgPicture.asset(
          'assets/images/odontopro.svg',
        ),
      ),
    );
  }
}
