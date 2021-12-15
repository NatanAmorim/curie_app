import 'package:curie_desktop/src/models/students.dart';
import 'package:curie_desktop/src/models/users.dart';

class StudentsGrades {
  final int studentGradePK;
  final int studentGradeScore;
  final Students student;
  final Users studentGradeCreatedBy;
  final DateTime studentGradeCreatedAt;
  final Users studentGradeLastModifiedBy;
  final DateTime studentGradeLastModifiedAt;

  StudentsGrades(
      this.studentGradePK,
      this.studentGradeScore,
      this.student,
      this.studentGradeCreatedBy,
      this.studentGradeCreatedAt,
      this.studentGradeLastModifiedBy,
      this.studentGradeLastModifiedAt);
}
