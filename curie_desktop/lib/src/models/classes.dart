import 'package:curie_desktop/src/models/employees.dart';
import 'package:curie_desktop/src/models/lessons.dart';
import 'package:curie_desktop/src/models/students.dart';
import 'package:curie_desktop/src/models/users.dart';

class Classes {
  final int classPK;
  final String className;
  final String classDescription;
  final String classCode;
  final Employees classTeachers;
  final Students classStudents;
  final Lessons classLessons;
  final Users classCreatedBy;
  final DateTime classCreatedAt;
  final Users classLastModifiedBy;
  final DateTime classLastModifiedAt;

  Classes(
      this.classPK,
      this.className,
      this.classDescription,
      this.classTeachers,
      this.classStudents,
      this.classLessons,
      this.classCreatedBy,
      this.classCreatedAt,
      this.classLastModifiedBy,
      this.classLastModifiedAt,
      this.classCode);
}
