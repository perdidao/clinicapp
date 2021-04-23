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
            padding: EdgeInsets.all(opSpacing),
            decoration: BoxDecoration(
              color: opCyan,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(size * 0.1),
                bottomRight: Radius.circular(size * 0.1),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Bom dia',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'Laís Lopes',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
