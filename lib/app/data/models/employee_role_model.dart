class EmployeeRole {
  String? id;
  String? name;
  var description;
  String? createdat;

  EmployeeRole({this.id, this.name, this.description, this.createdat});

  EmployeeRole.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'] != null
        ? description.fromJson(json['description'])
        : null;
    createdat = json['createdat'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    if (description != null) {
      data['description'] = description.toJson();
    }
    data['createdat'] = createdat;
    return data;
  }
}

class Description {
  bool? dashboard;
  bool? employees;
  bool? reports;
  bool? delivered;
  bool? settings;
  bool? products;
  bool? orders;

  Description(
      {this.dashboard,
      this.employees,
      this.reports,
      this.delivered,
      this.settings,
      this.products,
      this.orders});

  Description.fromJson(Map<String, dynamic> json) {
    dashboard = json['dashboard'];
    employees = json['employees'];
    reports = json['reports'];
    delivered = json['delivered'];
    settings = json['settings'];
    products = json['products'];
    orders = json['orders'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['dashboard'] = dashboard;
    data['employees'] = employees;
    data['reports'] = reports;
    data['delivered'] = delivered;
    data['settings'] = settings;
    data['products'] = products;
    data['orders'] = orders;
    return data;
  }
}
