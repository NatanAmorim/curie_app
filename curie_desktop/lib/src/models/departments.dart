import 'package:curie_desktop/src/models/users.dart';

class Departments {
  final int departmentPK;
  final String departmentName;
  final String departmentDescription;
  final Users departmentCreatedBy;
  final DateTime departmentCreatedAt;
  final Users departmentLastModifiedBy;
  final DateTime departmentLastModifiedAt;

  Departments(
      this.departmentPK,
      this.departmentName,
      this.departmentDescription,
      this.departmentCreatedBy,
      this.departmentCreatedAt,
      this.departmentLastModifiedBy,
      this.departmentLastModifiedAt);
}
