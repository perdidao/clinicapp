import 'package:clinicapp/services/procedure/procedure.dart';

class Appointment {
  late int id;

  late DateTime date;

  late int patientId;

  late double price;

  List<Procedure>? procedures;

  String? notes;

  Appointment({
    required this.id,
    required this.date,
    required this.patientId,
    required this.price,
    this.procedures,
    this.notes,
  });

  Appointment.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.date = json['date'];
    this.patientId = json['patientId'];
    this.price = json['price'];
    this.procedures = json['procedures'];
    this.notes = json['notes'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['date'] = this.date;
    data['patientId'] = this.patientId;
    data['price'] = this.price;
    data['procedures'] = this.procedures;
    data['notes'] = this.notes;

    return data;
  }
}
