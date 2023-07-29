class sessions {
  int? id;
  String? startTime;
  int? inGroup;
  int? status;
  int? courseId;
  

  sessions(
      {this.id,
      this.startTime,
      this.inGroup,
      this.status,
      this.courseId,});

  sessions.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    startTime = json['start_time'];
    inGroup = json['in_group'];
    status = json['status'];
    courseId = json['course_id'];
  }

  
}