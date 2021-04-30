import 'package:floor/floor.dart';

import 'patient.dart';

@dao
abstract class PatientDao {
  @insert
  Future<void> insertPatient(Patient patient);

  @Query('SELECT * FROM Patients')
  Future<List<Patient>> listAllPatients();

  @Query('SELECT * FROM Patients WHERE id = :id')
  Future<Patient?> findPatientById(int id);

  @Query('DELETE FROM Patients WHERE id = :id')
  Future<void> deletePatient(int id);
}
