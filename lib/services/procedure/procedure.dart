class Procedure {
  late int id;

  late String name;

  double? value;

  Procedure({
    required this.id,
    required this.name,
    this.value,
  });

  Procedure.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.name = json['name'];
    this.value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['value'] = this.value;

    return data;
  }
}
