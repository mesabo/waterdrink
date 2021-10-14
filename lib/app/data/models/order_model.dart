class Order {
  String? id;
  String? user;
  String? customer;
  String? deliverer;
  String? orderType;
  String? orderStatus;
  String? total;
  String? paid;
  String? todyPaid;
  List<String>? product;
  String? date;
  String? createdat;
  String? updateat;

  Order(
      {this.id,
      this.user,
      this.customer,
      this.deliverer,
      this.orderType,
      this.orderStatus,
      this.total,
      this.paid,
      this.todyPaid,
      this.product,
      this.date,
      this.createdat,
      this.updateat});

  Order.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    user = json['user'];
    customer = json['customer'];
    deliverer = json['deliverer'];
    orderType = json['order_type'];
    orderStatus = json['order_status'];
    total = json['total'];
    paid = json['paid'];
    todyPaid = json['tody_paid'];
    product = json['product'].cast<String>();
    date = json['date'];
    createdat = json['createdat'];
    updateat = json['updateat'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['user'] = user;
    data['customer'] = customer;
    data['deliverer'] = deliverer;
    data['order_type'] = orderType;
    data['order_status'] = orderStatus;
    data['total'] = total;
    data['paid'] = paid;
    data['tody_paid'] = todyPaid;
    data['product'] = product;
    data['date'] = date;
    data['createdat'] = createdat;
    data['updateat'] = updateat;
    return data;
  }
}
