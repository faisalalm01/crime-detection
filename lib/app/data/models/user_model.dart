class User {
  int? id;
  String? fullname;
  String? email;
  String? address;

  User({this.id, this.fullname, this.email, this.address});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    fullname = json['fullname'];
    email = json['email'];
    address = json['address'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['fullname'] = fullname;
    data['email'] = email;
    data['address'] = address;
    return data;
  }
}
