class Patient {
  late int id;

  late String name;

  String? email;

  String? phone;

  String? notes;

  Patient({
    required this.id,
    required this.name,
    this.email,
    this.phone,
    this.notes,
  });

  Patient.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.name = json['name'];
    this.email = json['email'];
    this.phone = json['phone'];
    this.notes = json['notes'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['notes'] = this.notes;

    return data;
  }
}
