import 'package:floor/floor.dart';

import 'clinic.dart';

@dao
abstract class ClinicDao {
  @insert
  Future<void> insertClinic(Clinic clinic);

  @Query('SELECT * FROM Clinics')
  Future<List<Clinic>> listAllClinics();

  @Query('SELECT * FROM Clinics WHERE id = :id')
  Future<Clinic?> findClinicById(int id);

  @Query('DELETE FROM Clinics WHERE id = :id')
  Future<void> deleteClinic(int id);
}
