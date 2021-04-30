import 'package:floor/floor.dart';

import 'appointment.dart';

@dao
abstract class AppointmentDao {
  @insert
  Future<void> insertAppointment(Appointment appointment);

  @Query('SELECT * FROM Appointments')
  Future<List<Appointment>> listAllAppointments();

  @Query('SELECT * FROM Appointments WHERE id = :id')
  Future<Appointment?> findAppointmentById(int id);

  @Query('SELECT * FROM Appointments WHERE patientId = :id')
  Future<Appointment?> findAppointmentByPatientId(int id);

  @Query('DELETE FROM Appointments WHERE id = :id')
  Future<void> deleteAppointment(int id);
}
