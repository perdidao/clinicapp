import 'dart:async';
import 'package:floor/floor.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

import 'package:clinicapp/services/appointment/appointment.dart';
import 'package:clinicapp/services/appointment/appointment_dao.dart';

import 'package:clinicapp/services/appointment_type/appointment_type.dart';
import 'package:clinicapp/services/appointment_type/appointment_type_dao.dart';

import 'package:clinicapp/services/clinic/clinic.dart';
import 'package:clinicapp/services/clinic/clinic_dao.dart';

import 'package:clinicapp/services/patient/patient.dart';
import 'package:clinicapp/services/patient/patient_dao.dart';

part 'database.g.dart';

@Database(version: 1, entities: [Appointment, AppointmentType, Clinic, Patient])
abstract class AppDatabase extends FloorDatabase {
  AppointmentDao get appointmentDao;
  AppointmentTypeDao get appointmentTypeDao;
  ClinicDao get clinicDao;
  PatientDao get patientDao;
}
