import 'package:curie/models/students.dart';
import 'package:curie/models/users.dart';

class StudentsWarnings {
  final int studentWarningPK;
  final Students student;
  final String studentWarningDescription;
  final DateTime studentWarningDate;
  final Users studentWarningCreatedBy;
  final DateTime studentWarningCreatedAt;
  final Users studentWarningLastModifiedBy;
  final DateTime studentWarningLastModifiedAt;

  StudentsWarnings(
      this.studentWarningPK,
      this.student,
      this.studentWarningDescription,
      this.studentWarningDate,
      this.studentWarningCreatedBy,
      this.studentWarningCreatedAt,
      this.studentWarningLastModifiedBy,
      this.studentWarningLastModifiedAt);
}
