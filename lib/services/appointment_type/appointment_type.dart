import 'package:floor/floor.dart';

@Entity(tableName: 'AppointmentTypes')
class AppointmentType {
  @primaryKey
  final int id;

  final String name;

  final double? value;

  AppointmentType({
    required this.id,
    required this.name,
    this.value,
  });
}
