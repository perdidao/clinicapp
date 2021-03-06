import 'package:floor/floor.dart';

@Entity(tableName: 'Appointments')
class Appointment {
  @primaryKey
  final int id;

  final String date;

  final int patientId;

  final int? clinicId;

  final double? price;

  final String? type;

  final String? notes;

  Appointment({
    required this.id,
    required this.date,
    required this.patientId,
    this.clinicId,
    this.price,
    this.type,
    this.notes,
  });
}
