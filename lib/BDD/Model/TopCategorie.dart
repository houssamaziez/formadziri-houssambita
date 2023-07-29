
import 'package:formadziri/BDD/Model/supcatgr2.dart';

class TopCategories {
  int? id;
  String? title;
  String? color;
  int? status;
  int? categoryId;
  String? createdAt;
  String? updatedAt;
  Catego? category;

  TopCategories(
      {this.id,
      this.title,
      this.color,
      this.status,
      this.categoryId,
      this.createdAt,
      this.updatedAt,
      this.category});

  TopCategories.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    color = json['color'];
    status = json['status'];
    categoryId = json['category_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    category =
        json['category'] != null ? new Catego.fromJson(json['category']) : null;
  }
}
