import 'package:curie_desktop/src/models/users.dart';

class Subjects {
  final int subjectPK;
  final String subjectName;
  final String subjectDescription;
  final Users subjectCreatedBy;
  final DateTime subjectCreatedAt;
  final Users subjectLastModifiedBy;
  final DateTime subjectLastModifiedAt;

  Subjects(
      this.subjectPK,
      this.subjectName,
      this.subjectDescription,
      this.subjectCreatedBy,
      this.subjectCreatedAt,
      this.subjectLastModifiedBy,
      this.subjectLastModifiedAt);
}
