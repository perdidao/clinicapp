import 'package:clinicapp/constants.dart';
import 'package:clinicapp/services/patient/patient.dart';
import 'package:clinicapp/services/patient/patient_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class PatientCard extends StatelessWidget {
  const PatientCard({
    Key? key,
    required this.patient,
  }) : super(key: key);

  final Patient patient;

  @override
  Widget build(BuildContext context) {
    PatientController _patientController = Modular.get();

    return Container(
      padding: EdgeInsets.symmetric(
        vertical: opSpacing / 2,
        horizontal: opSpacing,
      ),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1,
            color: opLightBrown,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                patient.name!,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: opSpacing / 2,
              ),
              Text(
                patient.email!,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: opSpacing / 4,
              ),
              Text(
                patient.phone!,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          GestureDetector(
            child: Icon(
              Icons.delete,
              color: opRed,
            ),
            onTap: () {
              _patientController.deletePatient(patient.id!);
            },
          )
        ],
      ),
    );
  }
}
