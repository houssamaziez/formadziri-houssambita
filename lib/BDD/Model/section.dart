import 'package:formadziri/BDD/Model/Courses.dart';

class Sections {
  int? id;
  String? title;
  int? status;
  String? createdAt;
  String? updatedAt;
  List<Course>? courses;

  Sections(
      {this.id,
      this.title,
      this.status,
      this.createdAt,
      this.updatedAt,
      this.courses});

  Sections.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    if (json['courses'] != null) {
      courses = <Course>[];
      json['courses'].forEach((v) {
        courses!.add(new Course.fromJson(v));
      });
    }
  }


}