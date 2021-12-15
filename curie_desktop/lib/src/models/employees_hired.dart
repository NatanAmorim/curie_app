import 'package:curie_desktop/src/models/users.dart';

class EmployeesHired {
  final int employeeHiredPK;
  final int employeeHiredObservations;
  final Users employeeHiredCreatedBy;
  final DateTime employeeHiredCreatedAt;
  final Users employeeHiredLastModifiedBy;
  final DateTime employeeHiredLastModifiedAt;

  EmployeesHired(
      this.employeeHiredPK,
      this.employeeHiredObservations,
      this.employeeHiredCreatedBy,
      this.employeeHiredCreatedAt,
      this.employeeHiredLastModifiedBy,
      this.employeeHiredLastModifiedAt);
}
