import 'Courses.dart';
import 'Teachers.dart';

class Catego {
  int? id;
  String? name;
  String? image;
  String? icon;
  int? status;
  String? createdAt;
  String? updatedAt;
  List<SubCategories2>? subCategories;

  Catego(
      {this.id,
      this.name,
      this.image,
      this.icon,
      this.status,
      this.createdAt,
      this.updatedAt,
      this.subCategories});

  Catego.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
    icon = json['icon'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    if (json['sub_categories'] != null) {
      subCategories = <SubCategories2>[];
      json['sub_categories'].forEach((v) {
        subCategories!.add(new SubCategories2.fromJson(v));
      });
    }
  }
}

class SubCategories2 {
  int? id;
  String? name;
  String? image;
  String? icon;
  int? categoryId;
  int? status;
  String? createdAt;
  String? updatedAt;
  List<Course>? course;

  SubCategories2(
      {this.id,
      this.name,
      this.image,
      this.icon,
      this.categoryId,
      this.status,
      this.createdAt,
      this.updatedAt,
      this.course});

  SubCategories2.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
    icon = json['icon'];
    categoryId = json['category_id'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    if (json['course'] != null) {
      course = <Course>[];
      json['course'].forEach((v) {
        course!.add(new Course.fromJson(v));
      });
    }
  }
}

class Course2 {
  int? id;
  String? title;
  String? image;
  String? description;
  int? priceGroup;
  int? priceIndividual;
  int? individual;
  int? group;
  int? sessionsNumber;
  int? sessionDuration;
  int? durationWeeks;
  String? curriculum;
  String? requirments;
  String? courseFor;
  String? whatToLearn;
  int? rating;
  int? status;
  int? teacherId;
  int? subCategoryId;
  String? createdAt;
  String? updatedAt;
  Teachers? teacher;

  Course2(
      {this.id,
      this.title,
      this.image,
      this.description,
      this.priceGroup,
      this.priceIndividual,
      this.individual,
      this.group,
      this.sessionsNumber,
      this.sessionDuration,
      this.durationWeeks,
      this.curriculum,
      this.requirments,
      this.courseFor,
      this.whatToLearn,
      this.rating,
      this.status,
      this.teacherId,
      this.subCategoryId,
      this.createdAt,
      this.updatedAt,
      this.teacher});

  Course2.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    image = json['image'];
    description = json['description'];
    priceGroup = json['price_group'];
    priceIndividual = json['price_individual'];
    individual = json['individual'];
    group = json['group'];
    sessionsNumber = json['sessions_number'];
    sessionDuration = json['session_duration'];
    durationWeeks = json['duration_weeks'];
    curriculum = json['curriculum'];
    requirments = json['requirments'];
    courseFor = json['course_for'];
    whatToLearn = json['what_to_learn'];
    rating = json['rating'];
    status = json['status'];
    teacherId = json['teacher_id'];
    subCategoryId = json['sub_category_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    teacher =
        json['teacher'] != null ? new Teachers.fromJson(json['teacher']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['image'] = this.image;
    data['description'] = this.description;
    data['price_group'] = this.priceGroup;
    data['price_individual'] = this.priceIndividual;
    data['individual'] = this.individual;
    data['group'] = this.group;
    data['sessions_number'] = this.sessionsNumber;
    data['session_duration'] = this.sessionDuration;
    data['duration_weeks'] = this.durationWeeks;
    data['curriculum'] = this.curriculum;
    data['requirments'] = this.requirments;
    data['course_for'] = this.courseFor;
    data['what_to_learn'] = this.whatToLearn;
    data['rating'] = this.rating;
    data['status'] = this.status;
    data['teacher_id'] = this.teacherId;
    data['sub_category_id'] = this.subCategoryId;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    if (this.teacher != null) {
      data['teacher'] = this.teacher!.toJson();
    }
    return data;
  }
}
