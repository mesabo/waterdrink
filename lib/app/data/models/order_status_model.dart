class OrderStatus {
  String? id;
  String? name;
  String? enable;
  String? createdat;
  String? updateat;

  OrderStatus({this.id, this.name, this.enable, this.createdat, this.updateat});

  OrderStatus.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    enable = json['enable'];
    createdat = json['createdat'];
    updateat = json['updateat'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['enable'] = enable;
    data['createdat'] = createdat;
    data['updateat'] = updateat;
    return data;
  }
}
