class Expenditure {
  String? id;
  String? userid;
  String? category;
  String? name;
  var amount;
  String? enable;
  String? createdat;
  String? updateat;

  Expenditure(
      {this.id,
      this.userid,
      this.category,
      this.name,
      this.amount = 0.0,
      this.enable,
      this.createdat,
      this.updateat});

  Expenditure.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userid = json['userid'];
    category = json['category'];
    name = json['name'];
    amount = json['amount'];
    enable = json['enable'];
    createdat = json['createdat'];
    updateat = json['updateat'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['userid'] = userid;
    data['category'] = category;
    data['name'] = name;
    data['amount'] = amount;
    data['enable'] = enable;
    data['createdat'] = createdat;
    data['updateat'] = updateat;
    return data;
  }
}
