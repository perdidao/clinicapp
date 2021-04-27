class Clinic {
  late int id;

  late String name;

  double? appointmentValue;

  double? dentistPercentage;

  Clinic({
    required this.id,
    required this.name,
    this.appointmentValue,
    this.dentistPercentage,
  });

  Clinic.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.name = json['name'];
    this.appointmentValue = json['appointmentValue'];
    this.dentistPercentage = json['dentistPercentage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['id'] = this.id;
    data['name'] = this.name;
    data['appointmentValue'] = this.appointmentValue;
    data['dentistPercentage'] = this.dentistPercentage;

    return data;
  }
}
