import 'package:clinicapp/constants.dart';
import 'package:clinicapp/services/patient/patient_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'components/patient_card.dart';

class PatientsScreen extends StatelessWidget {
  final PatientController _patientController = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Meus pacientes',
        ),
        actions: [
          GestureDetector(
            onTap: () => Modular.to.navigate('/patients/add'),
            child: Icon(
              Icons.person_add,
            ),
          ),
          SizedBox(
            width: opSpacing,
          ),
        ],
      ),
      body: Observer(
        name: 'PatientsObserver',
        builder: (context) {
          return ListView.builder(
            itemCount: _patientController.patients.length,
            itemBuilder: (BuildContext context, int index) {
              return PatientCard(patient: _patientController.patients[index]);
            },
          );
        },
      ),
    );
  }
}
