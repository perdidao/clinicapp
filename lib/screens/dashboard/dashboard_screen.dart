import 'package:clinicapp/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'components/dashboard_screen_body.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset(
          "assets/images/odontopro.svg",
          color: Colors.white,
          height: 36,
        ),
        backgroundColor: opCyan,
        elevation: 0,
      ),
      body: DashboardScreenBody(),
    );
  }
}
