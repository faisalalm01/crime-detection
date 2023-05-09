class User {
  int? id;
  String? fullname;
  String? email;
  String? address;
  String? no_hp;

  User({this.id, this.fullname, this.email, this.address});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    fullname = json['fullname'];
    email = json['email'];
    address = json['address'];
    no_hp = json['no_hp'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['fullname'] = fullname;
    data['email'] = email;
    data['address'] = address;
    data['no_hp'] = no_hp;
    return data;
  }
}
