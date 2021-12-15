import 'package:curie_desktop/src/models/employees.dart';
import 'package:curie_desktop/src/models/users.dart';

class EmployeesFired {
  final int employeeFiredPK;
  final int employeeFiredReason;
  final int employeeFiredObservations;
  final Employees employeeFired;
  final Users employeeFiredCreatedBy;
  final DateTime employeeFiredCreatedAt;
  final Users employeeFiredLastModifiedBy;
  final DateTime employeeFiredLastModifiedAt;

  EmployeesFired(
      this.employeeFiredPK,
      this.employeeFiredReason,
      this.employeeFiredObservations,
      this.employeeFired,
      this.employeeFiredCreatedBy,
      this.employeeFiredCreatedAt,
      this.employeeFiredLastModifiedBy,
      this.employeeFiredLastModifiedAt);
}
