// TODO
import 'package:curie/models/students.dart';
import 'package:curie/models/users.dart';

class StudentsEnrollments {
  final int studentEnrollmentPK;
  final int studentEnrollmentFinished;
  final int studentEnrollmentStartDate;
  final int studentEnrollmentEndDate;
  final Students student;
  final Users studentEnrollmentCreatedBy;
  final DateTime studentEnrollmentCreatedAt;
  final Users studentEnrollmentLastModifiedBy;
  final DateTime studentEnrollmentLastModifiedAt;

  StudentsEnrollments(
      this.studentEnrollmentPK,
      this.studentEnrollmentFinished,
      this.studentEnrollmentStartDate,
      this.studentEnrollmentEndDate,
      this.student,
      this.studentEnrollmentCreatedBy,
      this.studentEnrollmentCreatedAt,
      this.studentEnrollmentLastModifiedBy,
      this.studentEnrollmentLastModifiedAt);
}
