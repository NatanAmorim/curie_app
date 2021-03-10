import 'package:curie/models/users.dart';

class Lessons {
  final int lessonPK;
  final String lessonName;
  final String lessonDescription;
  final String lessonCode;
  final Users lessonCreatedBy;
  final DateTime lessonCreatedAt;
  final Users lessonLastModifiedBy;
  final DateTime lessonLastModifiedAt;

  Lessons(
      this.lessonPK,
      this.lessonName,
      this.lessonDescription,
      this.lessonCreatedBy,
      this.lessonCreatedAt,
      this.lessonLastModifiedBy,
      this.lessonLastModifiedAt,
      this.lessonCode);
}
