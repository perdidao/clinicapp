import 'package:floor/floor.dart';

@Entity(tableName: 'Clinics')
class Clinic {
  @primaryKey
  final int id;

  final String name;

  final double? appointmentValue;

  final double? dentistPercentage;

  Clinic({
    required this.id,
    required this.name,
    this.appointmentValue,
    this.dentistPercentage,
  });
}
