import 'package:curie_desktop/src/models/users.dart';

class Courses {
  final int coursePK;
  final String courseName;
  final String courseAbbreviation;
  final String courseCode;
  final String courseDescription;
  final Users courseCreatedBy;
  final DateTime courseCreatedAt;
  final Users courseLastModifiedBy;
  final DateTime courseLastModifiedAt;

  Courses(
      this.coursePK,
      this.courseName,
      this.courseAbbreviation,
      this.courseCode,
      this.courseDescription,
      this.courseCreatedBy,
      this.courseCreatedAt,
      this.courseLastModifiedBy,
      this.courseLastModifiedAt);
}
