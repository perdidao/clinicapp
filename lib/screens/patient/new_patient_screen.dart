import 'package:clinicapp/constants.dart';
import 'package:clinicapp/services/patient/patient.dart';
import 'package:clinicapp/services/patient/patient_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class NewPatientScreen extends StatelessWidget {
  final _name = TextEditingController();
  final _email = TextEditingController();
  final _phone = TextEditingController();

  final PatientController _patientController = Modular.get();

  @override
  Widget build(BuildContext context) {
    var cellphone = new MaskTextInputFormatter(
      mask: '## #####-####',
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Novo paciente',
        ),
      ),
      body: Observer(
        name: 'NewPatientObserver',
        builder: (context) {
          return SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(opSpacing),
              child: Column(
                children: [
                  TextField(
                    controller: _name,
                    decoration: InputDecoration(
                      hintText: 'Nome',
                    ),
                  ),
                  SizedBox(height: opSpacing),
                  TextField(
                    controller: _email,
                    decoration: InputDecoration(
                      hintText: 'E-mail',
                    ),
                  ),
                  SizedBox(height: opSpacing),
                  TextField(
                    controller: _phone,
                    decoration: InputDecoration(
                      hintText: 'Telefone',
                    ),
                    inputFormatters: [cellphone],
                  ),
                  SizedBox(height: opSpacing),
                  ElevatedButton(
                    onPressed: () {
                      _patientController.createPatient(
                        Patient(
                          name: _name.text,
                          email: _email.text,
                          phone: _phone.text,
                        ),
                      );
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Cadastrar paciente',
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
