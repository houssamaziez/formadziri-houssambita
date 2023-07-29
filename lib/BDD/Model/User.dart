class User {
  int? id;
  String? firstname;
  String? lastname;
  String? image;
  String? phone;
  String? email;
  int? status;
  Null emailVerifiedAt;
  int? roleId;
  String? createdAt;
  String? updatedAt;

  User(
      {this.id,
      this.firstname,
      this.lastname,
      this.image,
      this.phone,
      this.email,
      this.status,
      this.emailVerifiedAt,
      this.roleId,
      this.createdAt,
      this.updatedAt});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstname = json['firstname'];
    lastname = json['lastname'];
    image = json['image'];
    phone = json['phone'];
    email = json['email'];
    status = json['status'];
    emailVerifiedAt = json['email_verified_at'];
    roleId = json['role_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['firstname'] = this.firstname;
    data['lastname'] = this.lastname;
    data['image'] = this.image;
    data['phone'] = this.phone;
    data['email'] = this.email;
    data['status'] = this.status;
    data['email_verified_at'] = this.emailVerifiedAt;
    data['role_id'] = this.roleId;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
