import 'package:curie/models/users.dart';

class StudentsDocuments {
  final int studentDocumentPK;
  final String studentDocumentName;
  final String studentDocumentCode;
  final String studentDocumentType;
  final String studentDocumentDescription;
  final Users studentDocumentCreatedBy;
  final DateTime studentDocumentCreatedAt;
  final Users studentDocumentLastModifiedBy;
  final DateTime studentDocumentLastModifiedAt;

  StudentsDocuments(
      this.studentDocumentPK,
      this.studentDocumentName,
      this.studentDocumentCode,
      this.studentDocumentType,
      this.studentDocumentDescription,
      this.studentDocumentCreatedBy,
      this.studentDocumentCreatedAt,
      this.studentDocumentLastModifiedBy,
      this.studentDocumentLastModifiedAt);
}
