import 'package:curie/models/instructors.dart';

class LessonsFinalGrades {
  final int lessonsFinalGradePK;
  final int lessonsFinalGradeTotalStudents;
  final int lessonsFinalGradeTotalApprovedStudents;
  final int lessonsFinalGradeTotalRejectedStudents;
  final int lessonsFinalGradePercentageApprovedStudents;
  final int lessonsFinalGradePercentageRejectedStudents;
  final Instructors instructor;
  final DateTime lessonsFinalGradeDate;

  LessonsFinalGrades(
      this.lessonsFinalGradePK,
      this.lessonsFinalGradeTotalStudents,
      this.lessonsFinalGradeTotalApprovedStudents,
      this.lessonsFinalGradeTotalRejectedStudents,
      this.lessonsFinalGradePercentageApprovedStudents,
      this.lessonsFinalGradePercentageRejectedStudents,
      this.instructor,
      this.lessonsFinalGradeDate);
}
