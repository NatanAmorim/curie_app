import 'package:curie/models/students_attendance.dart';
import 'package:curie/models/students_warnings.dart';
import 'package:curie/models/users.dart';

class Students {
  final int studentPK;
  final String studentName;
  final String studentPhone;
  final String studentEmail;
  final String studentGender;
  final String studentObservation;
  final DateTime studentBirthday;
  final StudentsWarnings studentWarnings;
  final StudentsAttendance studentAttendance;
  final String studentStatus;
  final Users studentCreatedBy;
  final DateTime studentCreatedAt;
  final Users studentLastModifiedBy;
  final DateTime studentLastModifiedAt;

  Students(
      this.studentPK,
      this.studentName,
      this.studentPhone,
      this.studentEmail,
      this.studentGender,
      this.studentObservation,
      this.studentBirthday,
      this.studentWarnings,
      this.studentAttendance,
      this.studentStatus,
      this.studentCreatedBy,
      this.studentCreatedAt,
      this.studentLastModifiedBy,
      this.studentLastModifiedAt);
}
