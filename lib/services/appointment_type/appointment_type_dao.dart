import 'package:floor/floor.dart';

import 'appointment_type.dart';

@dao
abstract class AppointmentTypeDao {
  @insert
  Future<void> insertAppointmentType(AppointmentType appointmentType);

  @Query('SELECT * FROM AppointmentTypes')
  Future<List<AppointmentType>> listAllAppointmentTypes();

  @Query('SELECT * FROM AppointmentTypes WHERE id = :id')
  Future<AppointmentType?> findAppointmentTypeById(int id);

  @Query('DELETE FROM AppointmentTypes WHERE id = :id')
  Future<void> deleteAppointmentType(int id);
}
