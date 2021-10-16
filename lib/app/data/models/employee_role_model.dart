class EmployeeRole {
  var id;
  var name;
  Description description = Description(
      role: false,
      employees: false,
      customer: false,
      reports: false,
      delivered: false,
      settings: false,
      products: false,
      help: false);
  var createdat;

  EmployeeRole({this.id, this.name, required this.description, this.createdat});

  EmployeeRole.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    if (json['description'] != null) {
      description = Description.fromJson(json['description']);
    } else {
      description = Description(
          customer: true,
          role: false,
          employees: false,
          reports: false,
          delivered: false,
          settings: false,
          products: false,
          help: false);
    }
    createdat = json['createdat'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    if (this.description != null) {
      data['description'] = this.description.toJson();
    }
    data['createdat'] = this.createdat;
    return data;
  }
}

class Description {
  bool employees = false;
  bool customer = false;
  bool reports = false;
  bool delivered = false;
  bool settings = false;
  bool products = false;
  bool help = false;
  bool role = false;

  Description(
      {this.role = false,
      this.employees = false,
      this.customer = false,
      this.reports = false,
      this.delivered = false,
      this.settings = false,
      this.products = false,
      this.help = false});

  Description.fromJson(Map<String, dynamic> json) {
    role = json['role'] = false;
    employees = json['employees'];
    customer = json['employees'];
    reports = json['reports'];
    delivered = json['delivered'];
    settings = json['settings'];
    products = json['products'];
    help = json['help'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['role'] = this.role;
    data['customer'] = this.customer;
    data['employees'] = this.employees;
    data['reports'] = this.reports;
    data['delivered'] = this.delivered;
    data['settings'] = this.settings;
    data['products'] = this.products;
    data['help'] = this.help;
    return data;
  }
}
