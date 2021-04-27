import 'package:clinicapp/constants.dart';
import 'package:clinicapp/services/appointment/appointment.dart';
import 'package:flutter/material.dart';

class UpcomingAppointmentsItem extends StatelessWidget {
  const UpcomingAppointmentsItem({
    Key? key,
    required this.appointment,
  }) : super(key: key);

  final Appointment appointment;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      width: size.width / 3,
      margin: EdgeInsets.only(right: 20),
      padding: EdgeInsets.all(opSpacing * 0.5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(
            opSpacing * 0.5,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: opHighlight.withOpacity(0.15),
            offset: Offset(5, 5),
            blurRadius: 20,
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            appointment.date.split(' ')[1],
            style: TextStyle(
              fontSize: 22,
              color: opHighlight,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Segunda-feira',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: opHighlightDarken,
            ),
          ),
          SizedBox(
            height: opSpacing * 1.5,
          ),
          Text(
            'Lucas Almeida',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            'Manutenção',
            style: TextStyle(
              fontSize: 14,
              color: opBrown,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}
