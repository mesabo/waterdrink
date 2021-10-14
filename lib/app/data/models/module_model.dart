class Module {
  String? id;
  String? name;
  String? description;
  String? createdat;
  String? updateat;

  Module({this.id, this.name, this.description, this.createdat, this.updateat});

  Module.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    createdat = json['createdat'];
    updateat = json['updateat'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['description'] = description;
    data['createdat'] = createdat;
    data['updateat'] = updateat;
    return data;
  }
}
