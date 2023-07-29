import 'Teachers.dart';
import 'home.dart';

class Course {
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
  Teachers? teacher;
  SubCate? subCategory;

  Course(
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
      this.teacher,
      this.subCategory});

  Course.fromJson(Map<String, dynamic> json) {
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
    teacher =
        json['teacher'] != null ? new Teachers.fromJson(json['teacher']) : null;
    subCategory = json['sub_category'] != null
        ? new SubCate.fromJson(json['sub_category'])
        : null;
  }
}
