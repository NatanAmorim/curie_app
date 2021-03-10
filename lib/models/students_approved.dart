import 'package:curie/models/users.dart';

class StudentsApproved {
  final int studentApprovedPK;
  final Users studentApprovedCreatedBy;
  final DateTime studentApprovedCreatedAt;
  final Users studentApprovedLastModifiedBy;
  final DateTime studentApprovedLastModifiedAt;

  StudentsApproved(
      this.studentApprovedPK,
      this.studentApprovedCreatedBy,
      this.studentApprovedCreatedAt,
      this.studentApprovedLastModifiedBy,
      this.studentApprovedLastModifiedAt);
}
