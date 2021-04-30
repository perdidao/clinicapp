import 'package:floor/floor.dart';

@Entity(tableName: 'Patients')
class Patient {
  @primaryKey
  final int id;

  final String name;

  final String? email;

  final String? phone;

  final String? notes;

  Patient({
    required this.id,
    required this.name,
    this.email,
    this.phone,
    this.notes,
  });
}
