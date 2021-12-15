import 'package:curie_desktop/src/models/users.dart';

class StudentsAttendance {
  final int studentAttendancePK;
  final bool studentAttendanceStatus;
  final bool studentAttendancePresence;
  final DateTime studentsAttendanceDateTime;
  final int studentAttendanceAbsenceReason;
  final Users studentsAttendanceCreatedBy;
  final DateTime studentsAttendanceCreatedAt;
  final Users studentsAttendanceLastModifiedBy;
  final DateTime studentsAttendanceLastModifiedAt;

  StudentsAttendance(
      this.studentAttendancePK,
      this.studentAttendanceStatus,
      this.studentAttendancePresence,
      this.studentsAttendanceDateTime,
      this.studentAttendanceAbsenceReason,
      this.studentsAttendanceCreatedBy,
      this.studentsAttendanceCreatedAt,
      this.studentsAttendanceLastModifiedBy,
      this.studentsAttendanceLastModifiedAt);
}
