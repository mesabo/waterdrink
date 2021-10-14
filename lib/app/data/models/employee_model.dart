class Employee {
  String? id;
  String? role;
  String? name;
  String? email;
  String? phone;
  String? username;
  String? password;
  String? image;
  String? latestconn;
  String? enable;
  String? createdat;
  String? updateat;

  Employee(
      {this.id,
      this.role,
      this.name,
      this.email,
      this.phone,
      this.username,
      this.password,
      this.image,
      this.latestconn,
      this.enable,
      this.createdat,
      this.updateat});

  Employee.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    role = json['role'];
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    username = json['username'];
    password = json['password'];
    image = json['image'];
    latestconn = json['latestconn'];
    enable = json['enable'];
    createdat = json['createdat'];
    updateat = json['updateat'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['role'] = role;
    data['name'] = name;
    data['email'] = email;
    data['phone'] = phone;
    data['username'] = username;
    data['password'] = password;
    data['image'] = image;
    data['latestconn'] = latestconn;
    data['enable'] = enable;
    data['createdat'] = createdat;
    data['updateat'] = updateat;
    return data;
  }
}
