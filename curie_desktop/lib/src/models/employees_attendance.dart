import 'package:curie_desktop/src/models/users.dart';

class EmployeesAttendance {
  final int employeeAttendancePK;
  final bool employeeAttendanceStatus;
  final bool employeeAttendancePresence;
  final DateTime employeesAttendanceDateTime;
  final int employeeAbsenceReason;
  final Users employeeCreatedBy;
  final DateTime employeeCreatedAt;
  final Users employeeLastModifiedBy;
  final DateTime employeeLastModifiedAt;

  EmployeesAttendance(
      this.employeeAttendancePK,
      this.employeeAttendanceStatus,
      this.employeeAttendancePresence,
      this.employeesAttendanceDateTime,
      this.employeeAbsenceReason,
      this.employeeCreatedBy,
      this.employeeCreatedAt,
      this.employeeLastModifiedBy,
      this.employeeLastModifiedAt);
}
