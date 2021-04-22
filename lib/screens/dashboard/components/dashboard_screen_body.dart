import 'package:clinicapp/constants.dart';
import 'package:flutter/material.dart';

class DashboardScreenBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: size * 0.4,
            decoration: BoxDecoration(
              color: opBlue,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(size * 0.1),
                bottomRight: Radius.circular(size * 0.1),
              ),
            ),
          )
        ],
      ),
    );
  }
}
