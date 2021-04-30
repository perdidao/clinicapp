import 'package:floor/floor.dart';

@Entity(tableName: 'Patients')
class Patient {
  @PrimaryKey(autoGenerate: true)
  final int? id;

  final String? name;

  final String? email;

  final String? phone;

  final String? notes;

  Patient({
    this.id,
    this.name,
    this.email,
    this.phone,
    this.notes,
  });
}
