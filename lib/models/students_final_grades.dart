import 'package:curie/models/students.dart';
import 'package:curie/models/users.dart';

class StudentsFinalGrades {
  final int studentFinalGradePK;
  final int studentFinalGradeScore;
  final int studentFinalGradePercentage;
  final bool studentFinalGradeApproved;
  final Students student;
  final Users studentFinalGradeCreatedBy;
  final DateTime studentFinalGradeCreatedAt;
  final Users studentFinalGradeLastModifiedBy;
  final DateTime studentFinalGradeLastModifiedAt;

  StudentsFinalGrades(
      this.studentFinalGradePK,
      this.studentFinalGradeScore,
      this.studentFinalGradePercentage,
      this.studentFinalGradeApproved,
      this.student,
      this.studentFinalGradeCreatedBy,
      this.studentFinalGradeCreatedAt,
      this.studentFinalGradeLastModifiedBy,
      this.studentFinalGradeLastModifiedAt);
}
