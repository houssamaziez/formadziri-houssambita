import 'User.dart';

class Teachers {
  int? id;
  String? bio;
  String? city;
  String? fieldEducation;
  String? fieldTeaching;
  String? cv;
  String? cardId;
  String? card;
  String? daysAvailable;
  int? sexe;
  int? beInSocialMedia;
  int? rating;
  int? status;
  int? userId;
  String? createdAt;
  String? updatedAt;
  User? user;

  Teachers(
      {this.id,
      this.bio,
      this.city,
      this.fieldEducation,
      this.fieldTeaching,
      this.cv,
      this.cardId,
      this.card,
      this.daysAvailable,
      this.sexe,
      this.beInSocialMedia,
      this.rating,
      this.status,
      this.userId,
      this.createdAt,
      this.updatedAt,
      this.user});

  Teachers.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    bio = json['bio'];
    city = json['city'];
    fieldEducation = json['field_education'];
    fieldTeaching = json['field_teaching'];
    cv = json['cv'];
    cardId = json['card_id'];
    card = json['card'];
    daysAvailable = json['days_available'];
    sexe = json['sexe'];
    beInSocialMedia = json['be_in_social_media'];
    rating = json['rating'];
    status = json['status'];
    userId = json['user_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['bio'] = this.bio;
    data['city'] = this.city;
    data['field_education'] = this.fieldEducation;
    data['field_teaching'] = this.fieldTeaching;
    data['cv'] = this.cv;
    data['card_id'] = this.cardId;
    data['card'] = this.card;
    data['days_available'] = this.daysAvailable;
    data['sexe'] = this.sexe;
    data['be_in_social_media'] = this.beInSocialMedia;
    data['rating'] = this.rating;
    data['status'] = this.status;
    data['user_id'] = this.userId;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    return data;
  }
}
